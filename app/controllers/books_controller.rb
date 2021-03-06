class BooksController < ApplicationController

  def index
    @books = Book.all
  end    
    
  def show
    @book = Book.find(params[:id])
  end    
    
  def new
    @book = Book.new
  end

    def create
      @book = Book.new(book_params)
 
      @book.save
      redirect_to @book    
    end

    private
      def book_params
        params.require(:book).permit(:month, :dd, :yyyy, :hh, :mm, :ampm, :pickup, :dropoff, :passengers, :phone, :email)
      end    
    
end
