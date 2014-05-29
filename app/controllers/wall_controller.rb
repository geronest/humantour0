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
    post = Post.new
    post.category = params[:post_category]
    post.title = params[:post_title]
    post.content = params[:post_content]
    if post.save
      flash[:alert] = "저장되었습니다."
      redirect_to "/wall/show_detail/#{post.id}"
    else
      flash[:alert] = post.errors.values.flatten.join(' ')
      redirect_to :back
    end

  end

  def edit
  end

  def edit_complete
  end

  def delete_complete
  end
end
