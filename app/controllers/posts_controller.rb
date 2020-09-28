class PostsController < ApplicationController
  http_basic_authenticate_with name: "desafio", password: "desafio", only: :dashboard
  
  def index
    @posts = Post.all.order(id: :desc)
  end

  def dashboard
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    #@post.set_delete
    if @post.save
      redirect_to root_path, notice: 'Post creado.' 
    else
      render :new 
    end    
  end

  private
    def post_params
      params.require(:post).permit(:title, :content, :img)
    end
end
