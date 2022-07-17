class BlogsController < ApplicationController
  def index
    render json: Blog.all
  end

  def show
    render json: Blog.find(params[:id])
  end

  def create
    blog = Blog.new blog_params
    if blog.save
      render json: blog
      return
    end
    render json: "Failed to create blog!"
  end

  def update
    blog = Blog.find params[:id]
    blog.update blog_params
    render json: blog
  end

  def destroy
    blog = Blog.find params[:id]
    if blog.destroy
      render json: "Successfully deleted blog #{params[:id]}!"
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :body)
  end
end
