class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    @post.update(post_params)
      if @post.valid?
    redirect_to post_path(@post)
<<<<<<< HEAD
  #  @post.save
=======
    @post.save
>>>>>>> 71191312b12e267be912ecacb14993b19f4a4d38
  else
    render :edit
  end
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
