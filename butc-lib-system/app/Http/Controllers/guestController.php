<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
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
                
                // visitor counter function
                $visitorVal = DB::select('SELECT visitorCount FROM totalvisitors');
                DB::table('totalvisitors')
                ->where('id', 0)
                ->update(['visitorCount'=> $visitorVal[0]->visitorCount + 1]);

                // $totalVisitors = DB::select('SELECT visitorCount FROM totalvisitors');

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

    public function index() {
        try {
            $totalVisitors = DB::select('SELECT visitorCount FROM totalvisitors');
            return view('index',['allVisitors'=> $totalVisitors]);
        } catch (\Throwable $th) {
            //throw $th;
        }
    }
}