@extends('layouts.main')

@section('container')
<h1 class="mb-4 text-center">{{ $title }}</h1>

<div class="row justify-content-center">
    <div class="col-md-6">
        <form action="/posts">
            @if (request('category'))
                <input type="hidden" name="category" value="{{ request('category') }}">
            @endif
            @if (request('author'))
                <input type="hidden" name="author" value="{{ request('author') }}">
            @endif
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Search.." name="search" value="{{ request('search') }}" autocomplete="none">
                <button class="btn btn-danger" type="submit">Search</button>
              </div>
        </form>
    </div>
</div>

@if ($posts->count()) 
    <div class="card mb-3">
        
        @if ($posts[0]->image)
        <div style="overflow: hidden; max-height: 350px;">
            <img src="{{ asset('storage/' . $posts[0]->image) }}" alt="{{ $posts[0]->category->title }}" class="img-fluid">
        </div>
        @else
            <img src="https://source.unsplash.com/random/1200x300?{{ $posts[0]->category->title }}" class="card-img-top" style="background-size: contain; height: 300px;" alt="...">
        @endif
        
    <div class="card-body text-center">
        <h5 class="card-title">
            <a href="/posts/{{ $posts[0]->slug }}" class="text-decoration-none text-dark">{{ $posts[0]->title }}</a>
        </h5>
        <p>
            <small class="text-muted">
                <h6>By. <a href="/posts?author={{ $posts[0]->author->username }}" class="text-decoration-none text-danger">{{ $posts[0]->author->name }}</a> in <a href="/posts?category={{ $posts[0]->category->slug }}" class="text-decoration-none text-danger">{{ $posts[0]->category->title }}</a> {{ $posts[0]->created_at->diffForHumans() }}</h6> 
                {{-- diffForHumans = Biar tipe created at nya jadi 10 mins ago, dll --}}
            </small>
        </p>
        <p class="card-text">{{ $posts[0]->excerpt }}</p>
        <a href="/posts/{{ $posts[0]->slug }}" class="text-decoration-none btn btn-danger">Read More..</a>

    </div>
    </div>

<div class="container">
    <div class="row">
        
        @foreach ($posts->skip(1) as $post) 
        {{-- Skip biar post yang pertama di skip dan langsung kedua --}}
        <div class="col-md-4 mb-3">
            <div class="card">
                <div class="position-absolute px-3 py-2" style="background-color: rgba(0, 0, 0, 0.7)"><a href="/posts?category={{$post->category->slug}}" class="text-white text-decoration-none">{{ $post->category->title }}</a></div>
              
                @if ($post->image)
                    <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->title }}" class="img-fluid">
                @else
                    <img src="https://source.unsplash.com/random/500x400?{{ $post->category->title }}" class="card-img-top" alt="{{ $post->category->title }}">
                @endif
                
                <div class="card-body">
                  <h5 class="card-title">{{ $post->title }}</h5>
                  <p>
                    <small class="text-muted">
                        {{-- <h6>By. <a href="/posts?author{{ $post->author->username }}" class="text-decoration-none text-danger">{{ $post->author->name }}</a> {{ $post->created_at->diffForHumans() }}</h6>  --}}
                    </small>
                </p>
                  <p class="card-text">{{ $post->excerpt }}</p>
                  <a href="/posts/{{ $post->slug }}" class="btn btn-danger">Read more</a>
                </div>
              </div>
        </div>
        @endforeach

    </div>
</div>

@else
    <p class="text-center fs-4">No post found.</p> 
@endif

<div class="d-flex justify-content-center m-5 danger">
    {{-- Pagination --}}
    {{ $posts->links() }}
    {{-- Pergi ke PostController, ada yang harus ditambahkan disana --}}
    {{-- Pergi ke AppServiceProvider, ada yng harus ditambahkan disana --}}
</div>
    
@endsection