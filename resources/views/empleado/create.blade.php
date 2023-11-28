<!-- resources/views/empleado/create.blade.php -->
@extends('layouts.app')

@section('content')
    <div class="container">
        <h2>Crear Empleado</h2>

        @if(session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif

        <form method="POST" action="{{ route('empleado.store') }}">
            @csrf

            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <input type="text" name="nombre" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="apellido">Apellido:</label>
                <input type="text" name="apellido" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="razon_social">Razón Social:</label>
                <input type="text" name="razon_social" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="num_documento">Número de Documento:</label>
                <input type="text" name="num_documento" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="num_telefono">Número de Teléfono:</label>
                <input type="text" name="num_telefono" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="pais_id">País:</label>
                <select name="pais_id" id="pais_id" class="form-control" required>
                    <option value="" selected disabled>Selecciona un país</option>
                    @foreach($paises as $pais)
                        <option value="{{ $pais->id }}">{{ $pais->nombre }}</option>
                    @endforeach
                </select>
            </div>

            <div class="form-group">
                <label for="ciudad">Ciudad:</label>
                <select name="ciudad" id="ciudad" class="form-control" required>
                    <option value="" selected disabled>Selecciona un país primero</option>
                </select>
            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-primary">Guardar</button>
            </div>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#pais_id').change(function() {
                var paisId = $(this).val();

                if (paisId) {
                    $.ajax({
                        type: "GET",
                        url: "{{ url('/obtener-ciudades') }}/" + paisId,
                        success: function(response) {
                            $('#ciudad').html(response);
                        }
                    });
                } else {
                    $('#ciudad').html('<option value="" selected disabled>Selecciona un país primero</option>');
                }
            });
        });
    </script>
@endsection
