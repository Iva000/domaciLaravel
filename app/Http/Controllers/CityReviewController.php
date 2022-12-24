<?php

namespace App\Http\Controllers;

use App\Models\Review;
use Illuminate\Http\Request;

class CityReviewController extends Controller
{
    public function index($city)
    {
        $reviews = Review::get()->where('city', $city);
        if (is_null($reviews)) {
            return response()->json('Data not found', 404);
        }
        return response()->json($reviews);
    }
}
