class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def create
    if !params[:author].present?
      @post = Post.new(body_text: params[:body_text], author: 'Anon', score: 0)
    else
      @post = Post.new(body_text: params[:body_text], author: params[:author], score: 0)
    end

    respond_to do |format|
      if verify_recaptcha(model: @post) && @post.save
        format.html { redirect_to @post, notice: 'Dziękujemy za posta!' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def vote
    @post = Post.find(params[:id])
    if params[:upvote] == "up"
      @post.score += 1
    elsif params[:upvote] == "down"
      @post.score -= 1
    end
    if @post.save
      render json: @post.to_json, status: :ok
    else
      render json: @post.errors.full_messages, status: :internal_server_error
    end

  end

  def show
    @post = Post.find(params[:format])
  end

end
