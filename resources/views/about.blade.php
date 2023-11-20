@extends('layouts.main')

@section('container')
    <h1>Halaman About</h1>
    <p>Hiraukan halaman ini karena fitur yang diutamakan adalah blog dan categories</p>
    <h3>{{ $name }}</h3>
    <p>{{ $email }}</p>
    <img src="img/{{ $image }}" alt="{{ $name }}" width="300">
@endsection