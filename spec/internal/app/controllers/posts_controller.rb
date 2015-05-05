class PostsController < ApplicationController
  def index
    @posts = Post.all
    render :json => @posts
  end

  def index_json_api
    @posts = Post.all
    render :json => @posts, :serialization_format => Ivy::Serializers::Formats::JSONAPI
  end

  def show
    @post = Post.find(params[:id])
    render :json => @post
  end

  def show_json_api
    @post = Post.find(params[:id])
    render :json => @post, :serialization_format => Ivy::Serializers::Formats::JSONAPI
  end
end
