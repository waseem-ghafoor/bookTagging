module BooksHelper
  def book_tags book
    book.tags.pluck(:name)
  end

  def select_options_for_books
    Book.pluck(:price).uniq
  end

  def book_select_default_value
    params[:price].present? ? params[:price] : ""
  end

  def select_options_for_tags
    Tag.pluck(:name).uniq
  end

  def tag_select_default_value
    params[:tag].present? ? params[:tag] : ""
  end

end
