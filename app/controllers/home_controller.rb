class HomeController < ApplicationController
  def index
    @posts=Post.all
  end

  def new
  end

  def create
    @post=Post.new
    @post.location=params[:location]
    @post.name=params[:name]
    @post.content=params[:content]
    @post.stars=params[:stars]
    @post.save

    redirect_to '/'
  end

  def show
    @post=Post.find(params[:post_id])
  end

  def edit
    @post=Post.find(params[:post_id])
  end

  def update
    @post=Post.find(params[:post_id])
    @post.location=params[:location]
    @post.name=params[:name]
    @post.content=params[:content]
    @post.stars=params[:stars]
    @post.save

    redirect_to '/'
  end

  def destroy
    @post=Post.find(params[:post_id])
    @post.destroy
    
    redirect_to '/'
  end

  def destroy_all
    Post.destroy_all
    redirect_to '/'
  end

end
