class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to root_path
    else
      redirect_to users_path
    end
  end

  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
