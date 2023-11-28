<?php

// app/Http/Controllers/EmpleadoController.php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pais;
use App\Models\Ciudad;
use App\Models\Empleado;


class EmpleadoController extends Controller
{   
   //Listado de empleados
    public function index()
    {
        $empleados = Empleado::with(['pais'])->get();
        return view('empleado.index', ['empleados' => $empleados]);
    }

    
    // Vista de crear empleados
    public function create()
    {
        $paises = Pais::all();
        $ciudades = Ciudad::all();
        return view('empleado.create', compact('paises', 'ciudades'));
    }

    // depende el pais trae la ciudad
    public function obtenerCiudades($paisId)
    {
        $ciudades = Ciudad::where('pais_id', $paisId)->get();

        $options = '<option value="" selected disabled>Selecciona una ciudad</option>';
        foreach ($ciudades as $ciudad) {
            $options .= '<option value="' . $ciudad->id . '">' . $ciudad->nombre . '</option>';
        }

        return $options;
    }

    // Almacena la informacion
    public function store(Request $request)
    {
        // Validación de campos
        $request->validate([
            'nombre' => 'required|string|max:255',
            'apellido' => 'required|string|max:255',
            'razon_social' => 'required|string|max:255',
            'num_documento' => 'required|string|max:255',
            'num_telefono' => 'required|string|max:255',
            'ciudad' => 'required|string|max:255',
            'pais_id' => 'required|string|max:255',
            
        ]);

        // Crear un nuevo empleado
        Empleado::create($request->all());

        // Redireccionar con un mensaje de éxito
        return redirect()->route('empleado.index')->with('success', 'Empleado creado correctamente.');
    }

    public function edit(Empleado $empleado)
    {
        $paises = Pais::all();
        $ciudades = Ciudad::all();
        return view('empleado.edit', compact('empleado', 'paises', 'ciudades'));
    }

    public function update(Request $request, Empleado $empleado)
    {   
         // Validaciones de los campos, si es necesario
         $request->validate([
            'nombre' => 'required|string|max:255',
            'apellido' => 'required|string|max:255',
            'razon_social' => 'required|string|max:255',
            'num_documento' => 'required|string|max:15',
            'num_telefono' => 'required|string|max:255',
            'pais_id' => 'required|exists:paises,id',
            'ciudad_id' => 'required|exists:ciudades,id',
        ]);

        // Actualizar el empleado con los datos del formulario
        $empleado->update([
            'nombre' => $request->nombre,
            'apellido' => $request->apellido,
            'razon_social' => $request->razon_social,
            'num_documento' => $request->cedula,
            'num_telefono' => $request->num_telefono,
            'pais_id' => $request->pais_id,
            'ciudad' => $request->ciudad_id,
        ]);

        // Redireccionar a la vista de detalle, por ejemplo
       // return redirect()->route('empleados.show', ['empleado' => $empleado->id])->with('success', 'Empleado actualizado exitosamente');
    }

    public function destroy(Empleado $empleado)
    {
        $empleado->delete();
        return redirect()->route('empleado.index')->with('success', 'Empleado eliminado correctamente.');
    }

    public function eliminarSeleccionados(Request $request)
    {
        {
            // Eliminar el empleado
            $empleado->delete();
    
            // Redirigir a la lista de empleados con un mensaje de éxito
            return redirect()->route('empleado.index')->with('success', 'Empleado eliminado exitosamente');
        }
    }





}


