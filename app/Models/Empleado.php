<?php

// app/Models/Empleado.php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Empleado extends Model
{
    use HasFactory;

    protected $fillable = [
        'nombre',
        'apellido',
        'razon_social',
        'num_documento', // Cambiado de 'cedula'
        'num_telefono', // Cambiado de 'telefono'
        'pais_id', // Cambiado de 'pais'
        'ciudad',
    ];

    public function pais()
    {
        return $this->belongsTo(Pais::class, 'pais_id');
    }

    public function ciudad()
    {
        return $this->belongsTo(Ciudad::class, 'ciudad_id');
    }
}
