<?php

namespace App\Http\Controllers;

use App\Models\Alumnos;
use Illuminate\Http\Request;

class AlumnosController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Alumnos::all();
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
        $alumnos = new Alumnos();
        $alumnos->nombre = $request->nombre;
        $alumnos->apellido = $request->apellido;
        $alumnos->email = $request->email;
        $alumnos->dni = $request->dni;
        $alumnos->save();
        return "Alumno Guardado correctamente";
    }

    /**
     * Display the specified resource.
     */
    public function show(Alumnos $alumnos)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Alumnos $alumnos)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $alumnos = Alumnos::find($id);
        $alumnos->nombre = $request->nombre;
        $alumnos->apellido = $request->apellido;
        $alumnos->email = $request->email;
        $alumnos->dni = $request->dni;
        $alumnos->save();
        return "Alumno actualizado correctamente";
    }

    /**
     * Remove the specified resource from storage.
     */
    public function delete($id)
    {
        $alumnos = Alumnos::find($id);
        $alumnos->delete();
        return "El Alumno se eliminó correctamente";
    }
}
