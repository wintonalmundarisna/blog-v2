@extends('dashboard.layouts.main')

@section('container')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
      <h1 class="h2">Posts Categories</h1>
    </div>
    @if (session()->has('success'))
        <div class="alert alert-success" role="alert">
          {{ session('success') }}
        </div>
    @endif
    <div class="table-responsive col-lg-12">
      <a href="/dashboard/categories/create" class="btn btn-primary mb-3">Create New Category</a>
      <table class="table table-striped table-lg">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Category Name</th>
        <th scope="col">Action</th>
      </tr>
    </thead>
    <tbody>
      @foreach ($categories as $category)    
      <tr>
        <td>{{ $loop->iteration }}</td>
        {{-- $loop = untuk looping urutan nomor --}}
        <td>{{ $category->title }}</td>
        <td>
          <a href="/dashboard/categories/{{ $category->slug }}" class="badge bg-info"><span data-feather="eye"></span></a>
          <a href="/dashboard/categories/{{ $category->slug }}/edit" class="badge bg-warning"><span data-feather="edit"></span></a>
          {{-- Ada tambahan edit, lihat di terminal php artisan route:list, liat yang edit --}}
          <form action="/dashboard/categories/{{ $category->slug }}"  method="POST" class="d-inline">
            @method('delete')
            @csrf
            <button class="badge bg-danger border-0" onclick="return confirm('Are you sure ?')"><span data-feather="x-circle"></button>
          </form>
        </td>
      </tr>
      @endforeach
    </tbody>
  </table>
</div>
@endsection