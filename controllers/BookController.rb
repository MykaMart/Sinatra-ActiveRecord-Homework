class BookController < ApplicationController

	get "/" do
		@books = Book.all
		@books.to_json
		erb :books
	end

	post "/" do
		@book = Book.new
		@book.title = params[:title]
		@book.author = params[:author]
		@book.genre = params[:genre]
		@book.published = params[:published]
		@book.save
	end

	put "/" do
		@book = Book.find_by(id: params[:id])
		@book.title = params[:title]
		@book.author = params[:author]
		@book.genre = params[:genre]
		@book.published = params[:published]
		@book.save
	end

	delete "/" do
		@book = Book.find_by(id: params[:id])
		@book.delete
		"deleted"
	end

end