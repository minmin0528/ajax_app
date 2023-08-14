class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  #コメントアウト
  #def new
  #end

  def create
    Post = Post.create(content: params[:content])
    reder json:{ post: post }
  end
  
end
