# frozen_string_literal: true

class BlogsController < ApplicationController
  before_action :require_user

  def index
    render json: Blog.all
  end

  def show
    render json: Blog.find(params[:id])
  end

  def create
    blog = Blog.new blog_params
    blog.user_id = current_user.id
    if blog.save
      render json: blog
      return
    end
    render json: 'Failed to create blog!'
  end

  def update
    blog = Blog.find params[:id]
    if current_user_can_modify blog.user_id
      blog.update blog_params
      render json: blog
      return
    end
    unauthorized
  end

  def destroy
    blog = Blog.find params[:id]
    if current_user_can_modify blog.user_id && blog.destroy
      render json: "Successfully deleted blog #{params[:id]}!"
      return
    end
    unauthorized
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :body)
  end
end
