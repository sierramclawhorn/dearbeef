class PostsController < ApplicationController

 	def index
    @posts = Post.all
  end

  def show
  	find_user
    @post = @user.posts.find(params[:id])
  end

  def new
    find_user
    @post = Post.new
  end

  def edit
  	find_user
    @post = @user.posts.find(params[:id])
  end

  def create
    find_user
    @post = @user.posts.new(post_params)
    if @post.save 
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def update
  	find_user
    @post = @user.posts.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post.id)
    else
      render 'edit'
    end
  end

  def destroy
  	find_user
    @post = @user.posts.find(params[:id]).destroy
    if @post.destroy
      redirect_to posts_path
    end
  end

  private

    def find_user
      @user = User.find(params[:user_id])
    end

    def post_params
      params.require(:post).permit(:date, 
                                   :title, 
                                   :body,
                                   :user)
    end


end
