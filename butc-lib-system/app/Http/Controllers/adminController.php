<?php

namespace App\Http\Controllers;

use App\Models\Books;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use phpDocumentor\Reflection\PseudoTypes\LowercaseString;

use function Pest\Laravel\get;

class adminController extends Controller
{
    public function dashboard() {
        $books = DB::select('SELECT * FROM books ORDER BY title ASC');

        $author = DB::select('SELECT author FROM books GROUP BY author');
        $category = DB::select('SELECT category FROM books GROUP BY category');
        $year = DB::select('SELECT year FROM books GROUP BY year');

        $allBooks = DB::select('SELECT COUNT(*) as allBooks FROM books ');
        $totalVisitors = DB::select('SELECT visitorCount FROM totalvisitors');
        // return view('admin.index', [);
        
        return view('admin.index', ['books' => $books, 'authors' => $author, 'categories' => $category, 'years' => $year, 'dispAllBooks'=>$allBooks, 'allVisitors'=> $totalVisitors]);
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
            $book->title = ucfirst(strtolower($request->input('title')));
            // $book->author = ucfirst(strtolower());
            $book->year = strtoupper($request->input('author'));
            $book->year = ucfirst(strtolower($request->input('year')));
            $book->category = ucfirst(strtolower($request->input('category')));
            $book->filePath = Storage::put('public/ebooks', $request->file('file'));
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
        $books->title = ucfirst(strtolower($request->input('title')));
        $books->author = ucfirst(strtolower($request->input('author')));
        $books->year = ucfirst(strtolower($request->input('year')));
        $books->category = ucfirst(strtolower($request->input('category')));
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

    public function filterAuthor(Request $request) {
        $author = $request->input('author');
        $category = $request->input('category');
        $year = $request->input('year');
        $bookAuthor = Books::where('author', 'like', '%' . $author . '%')
            ->where('category', 'like', '%' . $category . '%')
            ->where('year', 'like', '%' . $year . '%')
            ->get();

            $author = DB::select('SELECT author FROM books GROUP BY author');
            $category = DB::select('SELECT category FROM books GROUP BY category');
            $year = DB::select('SELECT year FROM books GROUP BY year');
            // dd($author);
        return view('admin.index', ['books' => $bookAuthor, 'authors' => $author, 'categories' => $category, 'years' => $year]);
    }

    public function clearFilter() {
        $books = DB::select('SELECT * FROM books ORDER BY title ASC');

        $author = DB::select('SELECT author FROM books GROUP BY author');
        $category = DB::select('SELECT category FROM books GROUP BY category');
        $year = DB::select('SELECT year FROM books GROUP BY year');
        
        return view('admin.index', ['books' => $books, 'authors' => $author, 'categories' => $category, 'years' => $year]);
    }

    public function search(Request $request)
    {
        // $getAllBooks = DB::select('SELECT * FROM books ORDER BY title ASC');
        try {
            if($request->input('q')) {
                $books = new Books();
                $result = $books->where('title','like','%'.$request->input('q').'%')
                            ->orWhere('author','like','%'.$request->input('q').'%')
                            ->orWhere('category','like','%'.$request->input('q').'%')
                ->get();
                // dd($result);

                $author = DB::select('SELECT author FROM books GROUP BY author');
                $category = DB::select('SELECT category FROM books GROUP BY category');
                $year = DB::select('SELECT year FROM books GROUP BY year');
                return view('admin.search.result', ['books'=>$result, 'authors' => $author, 'categories' => $category, 'years' => $year]);
            } else {
                $values = [];
                $author = DB::select('SELECT author FROM books GROUP BY author');
                $category = DB::select('SELECT category FROM books GROUP BY category');
                $year = DB::select('SELECT year FROM books GROUP BY year');
                // dd($values);
                return view('admin.search.result', ['books'=>$values, 'authors' => $author, 'categories' => $category, 'years' => $year]);
            }
        } catch (\Throwable $th) {
            throw $th;
        }
    }
}