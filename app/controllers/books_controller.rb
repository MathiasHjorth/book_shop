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
    @book = Book.create(book_params)

    #<< metoden fortæller activeRecord at den skal oprette rows i jointable
    # Læg mærke til, vi peger where metoden på, Category id skal være lige med det vi finder i params, under :book key, dernæst :category_ids vi får fra view, returnér den værdi
    # og sammenlign.
    # og sidst, forbind bogen til de kategorier, opret i jointable.
    @book.categories << Category.where(id: params[:book][:category_ids])

    if @book.save
      redirect_to controller: "books", action: "index"
    else
      render :new, status: :bad_request
    end

  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to controller: "books", action: "index"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to controller: "books", action: "index"
  end


  private
  def book_params
    params.require(:book).permit(:title,:description,:release_date,:rating,:author_id)
  end

end
