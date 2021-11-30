class TagsController < ApplicationController
  def index

  end

  def assign_tags
    if params["tag_id"].present?
      tag_id = params["tag_id"].to_i
      params["book_ids"].first.split(" ").each do |book_id|
        Book.find_by_id(book_id.to_i).taggings.find_or_create_by(tag_id: tag_id)
      end
    end
    respond_to do |format|
      format.html { redirect_to books_path, flash: {success: "Tags have been assigned successfully."}}
      format.json { render :json => @books }
    end
  end


end
