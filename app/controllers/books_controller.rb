class BooksController < ApplicationController
 before_action :authenticate_user!

  def index
    @books =Book.all
    @book = Book.new
   #エラー @user=User.find(params[:id])
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @book=Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book)
  end

  def edit
     @book=Book.find(params[:id])
  end

  def update
     @book=Book.find(params[:id])
     @book.update(book_params)
  end

  def destroy
    @book=Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
