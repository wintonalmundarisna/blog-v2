@extends('layouts.main')

@section('container')

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <h2>{{ $post->title }}</h1>
                <h6>By. <a href="/posts?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> in <a href="/posts?category={{ $post->category->slug }}" class="text-decoration-none">{{ $post->category->title }}</a></h6>

                @if ($post->image)
                    <div style="overflow: hidden; max-height: 350px;">
                        <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->title }}" class="img-fluid">
                    </div>
                @else
                    <img src="https://source.unsplash.com/random/1200x400?{{ $post->category->title }}" alt="{{ $post->category->title }}" class="img-fluid">
                    {{-- Img-fluid, biar responsive --}}
                @endif

                <article class="my-3">
                    {!! $post->body !!}
                </article>
                <a href="/posts" class="text-decoration-none">Back to posts</a>
            </div>
        </div>
    </div>
@endsection