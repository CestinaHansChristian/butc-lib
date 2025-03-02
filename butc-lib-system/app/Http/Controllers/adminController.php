<?php

namespace App\Http\Controllers;

use App\Models\Books;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

use function Pest\Laravel\get;

class adminController extends Controller
{
    public function dashboard() {
        $books = DB::select('SELECT * FROM books');
        // dd($books);
        return view('admin.index', ['books' => $books]);
    }

    public function accountCreate() {
        return view('create');
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('/login');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        try {
            $book = new Books;
            $book->title = $request->input('title');
            $book->author = $request->input('author');
            $book->year = $request->input('year');
            $book->category = $request->input('category');
            $book->filePath = Storage::put('public/ebooks', $request->file('file'));

            // Optionally, if you need to manually update timestamps:
            // $book->updated_at = now();
            // $book->created_at = now();

            $book->save();

            return redirect('/dashboard');
        } catch (Exception $th) {
            dd($th); // Dump the exception message for debugging
        }

    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        try {
            $book = Books::findOrFail($id);
            $filePath = $book->filePath;

            if (Storage::exists($filePath)) {
                // download single file
                return response(Storage::get($filePath), 200)->header('Content-Type', 'application/pdf');
                // return Storage::download($filePath, $book->title . '.pdf', ['Content-Type' => 'application/pdf']);
                // return response($file, 200)->header('Content-Type', 'application/pdf');
            } else {
                return response()->json(['error' => 'Failed to load the PDF document'], 404);
            }
        } catch (Exception $e) {
            return response()->json(['error' => 'Failed to load the PDF document'], 404);
        }

    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        return view('admin.edit', compact('id'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $books = new Books;
        $books = Books::findOrFail($id);
        $books->title = $request->input('title');
        $books->author = $request->input('author');
        $books->year = $request->input('year');
        $books->category = $request->input('category');
        // $books->filePath = Storage::put('public/ebooks', $request->file('file'));
        // dd($books);
        $books->save();
        return redirect('/dashboard')->with('update','Student has been updated!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        try {
            $books = Books::findOrFail($id);
            if(Storage::exists($books->filePath)) {
                Storage::delete($books->filePath);
                $books->delete();
                return redirect('/dashboard');
            } else {
                dd('File does not exist');
            }
        } catch (\Throwable $th) {

        }
    }
}