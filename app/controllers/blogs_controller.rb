class BlogsController < ApplicationController
  def index
    render json: Blog.all
  end

  def show
  end

  def new
  end

  def create
  end

  def update
  end

  def delete
  end
end
