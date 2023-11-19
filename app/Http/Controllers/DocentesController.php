<?php

namespace App\Http\Controllers;

use App\Models\Docentes;
use Illuminate\Http\Request;

class DocentesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Docentes::all();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $docentes = new Docentes();
        $docentes->nombre = $request->nombre;
        $docentes->apellido = $request->apellido;
        $docentes->email = $request->email;
        $docentes->cursosacargo = $request->cursosacargo;
        $docentes->save();
        return "Guardado correctamente";
    }

    /**
     * Display the specified resource.
     */
    public function show(Docentes $docentes)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Docentes $docentes)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $docentes = Docentes::find($id);
        $docentes->nombre = $request->nombre;
        $docentes->apellido = $request->apellido;
        $docentes->email = $request->email;
        $docentes->cursosacargo = $request->cursosacargo;
        $docentes->save();
        return "Docentes actualizado correctamente";
    }

    /**
     * Remove the specified resource from storage.
     */
    public function delete($id)
    {
        $docentes = Docentes::find($id);
        $docentes->delete();
        return "Docente se eliminó correctamente";
    }
}
