<!-- resources/views/empleado/index.blade.php -->
@extends('layouts.app')

@section('content')
    <div class="container">
        <h2>Listado de Empleados</h2>

        <table class="table">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Razón Social</th>
                    <th>Número de Documento</th>
                    <th>Número de Teléfono</th>
                    <th>País</th>
                </tr>
            </thead>
            <tbody>
                @foreach($empleados as $empleado)
                @php
        //dd($empleado);
    @endphp
                    <tr>
                        <td>{{ $empleado->id }}</td>
                        <td>{{ $empleado->nombre }}</td>
                        <td>{{ $empleado->apellido }}</td>
                        <td>{{ $empleado->razon_social }}</td>
                        <td>{{ $empleado->num_documento }}</td>
                        <td>{{ $empleado->num_telefono }}</td>
                        <td>{{ $empleado->pais ? $empleado->pais->nombre : 'No especificado' }}</td>
                        <!-- Puedes agregar más columnas según sea necesario -->
                          <!-- Columna de acciones -->
                          <td>
                            <a href="{{ route('empleado.edit', ['empleado' => $empleado]) }}" class="btn btn-primary">Editar</a>
                            <form action="{{ route('empleado.destroy', ['empleado' => $empleado]) }}" method="post" style="display: inline;">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger" onclick="return confirm('¿Estás seguro de eliminar este empleado?')">Eliminar</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
