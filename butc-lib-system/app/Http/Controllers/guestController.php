<?php

namespace App\Http\Controllers;

use App\Models\Books;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;

class guestController extends Controller
{
    public function search(Request $request)
    {
        try {
            if($request->input('q')) {
                $books = new Books();
                $result = $books->where('title','like','%'.$request->input('q').'%')
                            ->orWhere('author','like','%'.$request->input('q').'%')
                            ->orWhere('category','like','%'.$request->input('q').'%')
                ->get();
                return view('client.result', ['values'=>$result]);
            } else {
                $values = [];
                // dd($values);
                return view('client.result', ['values'=>$values]);
            }
        } catch (\Throwable $th) {
            throw $th;
        }
    }

    public function show(string $id) {
        // dd($id);
        try {
            $book = Books::findOrFail($id);
            $filePath = $book->filePath;

            if (Storage::exists($filePath)) {
                // download single file
                return response(Storage::get($filePath), 200)->header('Content-Type', 'application/pdf');
            } else {
                return response()->json(['error' => 'Failed to load the PDF document'], 404);
            }
        } catch (\Exception $e) {
            return response()->json(['error' => 'Failed to load the PDF document'], 404);
        }
    }
}