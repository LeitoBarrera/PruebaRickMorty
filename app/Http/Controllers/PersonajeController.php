<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use App\Models\Personaje;

class PersonajeController extends Controller
{
    public function index()
    {
        $personajes = Http::get('https://rickandmortyapi.com/api/character')->json();
        $data = $personajes['results'];
        $next = $personajes['info']['next'];

        while (count($data) < 100 && $next) {
            $response = Http::get($next)->json();
            $data = array_merge($data, $response['results']);
            $next = $response['info']['next'] ?? null;
        }

        return view('personajes.index', ['personajes' => array_slice($data, 0, 100)]);
    }

    public function guardar()
    {
        $url = 'https://rickandmortyapi.com/api/character';
        $data = [];
        $next = $url;

        while (count($data) < 100 && $next) {
            $response = Http::get($next)->json();
            $data = array_merge($data, $response['results']);
            $next = $response['info']['next'] ?? null;
        }

        foreach (array_slice($data, 0, 100) as $p) {
            Personaje::updateOrCreate(
                ['character_id' => $p['id']],
                [
                    'name' => $p['name'],
                    'status' => $p['status'],
                    'species' => $p['species'],
                    'type' => $p['type'] ?? '',
                    'gender' => $p['gender'],
                    'origin_name' => $p['origin']['name'],
                    'origin_url' => $p['origin']['url'],
                    'image' => $p['image'],
                ]
            );
        }

        return redirect('/')->with('success', 'Personajes guardados en base de datos.');
    }

    public function editar($id)
    {
        $personaje = Personaje::findOrFail($id);
        return view('personajes.editar', compact('personaje'));
    }

    public function actualizar(Request $request, $id)
    {
        $personaje = Personaje::findOrFail($id);
        $personaje->update($request->all());

        return redirect('/')->with('success', 'Personaje actualizado.');
    }
}

