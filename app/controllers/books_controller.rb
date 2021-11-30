class BooksController < ApplicationController
  def index
    @books = Book.all
    price_filter if is_valid_price_filter?
    tag_filter if is_valid_tag_filter?
    respond_to do |format|
      format.html
      format.json { render :json => @books }
    end
  end

  private

  def is_valid_price_filter?
    params[:price].present? && params[:price] != 'all'
  end

  def is_valid_tag_filter?
    params[:tag].present? && params[:tag] != 'all'
  end

  def price_filter
    @books = Book.where(price: params[:price].to_f)
  end
  def tag_filter
    @books = @books.joins(:tags).where(tags: {name: params[:tag]}).uniq
  end
end
