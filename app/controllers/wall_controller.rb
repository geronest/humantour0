class WallController < ApplicationController
  def show
    @posts = Post.all
  end

  def show_category
    case params[:category]
    when "tour"
      @category = "tour"
    when "interview"
      @category = "interview"
    end
    @posts = Post.where(category: @category)
  end

  def show_detail
    @post = Post.find(params[:id])
  end

  def write
  end

  def write_complete
  end

  def edit
  end

  def edit_complete
  end

  def delete_complete
  end
end
