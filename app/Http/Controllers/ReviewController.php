<?php

namespace App\Http\Controllers;

use App\Http\Resources\ReviewCollection;
use App\Http\Resources\ReviewResource;
use App\Models\Review;
use Dotenv\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator as FacadesValidator;

class ReviewController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $reviews = Review::all();
        return new ReviewCollection($reviews);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = FacadesValidator::make($request->all(), [
            'title' => 'required|string|max:255',
            'body' => 'required',
            'rating' => 'required',
            'category_id' => 'required',
        ]);

        // $if($validator->fails()){
        //     return response()->json($validator->errors());
        // }

        $review = Review::create([
            'title' => $request->title,
            'body' => $request->body,
            'rating' => $request->rating,
            'category_id' => $request->category_id,
            'user_id' => Auth::user()->id
        ]);

        return response()->json(['Review created successfully.', new ReviewResource($review)]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Review  $review
     * @return \Illuminate\Http\Response
     */
    public function show(Review $review)
    {
        return new ReviewResource($review);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Review  $review
     * @return \Illuminate\Http\Response
     */
    public function edit(Review $review)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Review  $review
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Review $review)
    {
        $validator = FacadesValidator::make($request->all(), [
            'title' => 'required|string|max:255',
            'body' => 'required',
            'rating' => 'required',
            'category_id' => 'required',
        ]);

        // $if($validator->fails()){
        //     return response()->json($validator->errors());
        // }


        $review->title->$request->title;
        $review->body->$request->body;
        $review->rating->$request->rating;
        $review->category_id->$request->category_id;

        $review->save();

        return response()->json(['Review updated successfully.', new ReviewResource($review)]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Review  $review
     * @return \Illuminate\Http\Response
     */
    public function destroy(Review $review)
    {
        $review->delete();
        return response()->json('Review deleted successfully.');
    }
}
