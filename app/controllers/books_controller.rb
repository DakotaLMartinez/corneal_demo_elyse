class BooksController < ApplicationController

  # GET: /books
  get "/books" do
    @books = Book.all
    erb :"/books/index.html"
  end

  # GET: /books/new
  get "/books/new" do
    @book = Book.new
    erb :"/books/new.html"
  end

  # POST: /books
  post "/books" do
    @book = Book.new(title: params[:title], author_name: params[:author_name])
    if @book.save
      redirect "/books"
    else
      erb :"/books/new.html"
    end
  end

  # GET: /books/5
  get "/books/:id" do
    erb :"/books/show.html"
  end

  # GET: /books/5/edit
  get "/books/:id/edit" do
    erb :"/books/edit.html"
  end

  # PATCH: /books/5
  patch "/books/:id" do
    redirect "/books/:id"
  end

  # DELETE: /books/5
  delete "/books/:id" do
    redirect "/books"
  end
end
