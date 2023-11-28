<!-- En resources/views/empleado/edit.blade.php -->
@extends('layouts.app')

@section('content')
    <div class="container">
        <h2>Editar Empleado</h2>

        <form action="{{ route('empleado.update', ['empleado' => $empleado]) }}" method="post">
            @csrf
            @method('PUT')

            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre:</label>
                <input type="text" class="form-control" id="nombre" name="nombre" value="{{ $empleado->nombre }}" required>
            </div>

            <div class="mb-3">
                <label for="apellido" class="form-label">Apellido:</label>
                <input type="text" class="form-control" id="apellido" name="apellido" value="{{ $empleado->apellido }}" required>
            </div>
            
            <div class="form-group">
                <label for="razon_social">Razón Social:</label>
                <input type="text" name="razon_social" class="form-control"  value="{{ $empleado->razon_social }}" required>
            </div>

            <div class="form-group">
                <label for="num_documento">Número de Documento:</label>
                <input type="text" name="num_documento" class="form-control" value="{{ $empleado->num_documento }}" required>
            </div>

            <div class="form-group">
                <label for="num_telefono">Número de Teléfono:</label>
                <input type="text" name="num_telefono" class="form-control" value="{{ $empleado->num_telefono }}" required>
            </div>

            <div class="mb-3">
                <label for="pais_id" class="form-label">País:</label>
                <select class="form-control" id="pais_id" name="pais_id">
                    @foreach($paises as $pais)
                        <option value="{{ $pais->id }}" {{ $empleado->pais_id == $pais->id ? 'selected' : '' }}>
                            {{ $pais->nombre }}
                        </option>
                    @endforeach
                </select>
            </div>

            <div class="mb-3">
                <label for="ciudad_id" class="form-label">Ciudad:</label>
                <select class="form-control" id="ciudad_id" name="ciudad_id">
                    @foreach($ciudades as $ciudad)
                        <option value="{{ $ciudad->id }}" {{ $empleado->ciudad_id == $ciudad->id ? 'selected' : '' }}>
                            {{ $ciudad->nombre }}
                        </option>
                    @endforeach
                </select>
            </div>

            <!-- Agrega más campos según sea necesario -->

            <div class="mb-3">
                <button type="submit" class="btn btn-primary">Guardar Cambios</button>
            </div>
        </form>
    </div>
@endsection
