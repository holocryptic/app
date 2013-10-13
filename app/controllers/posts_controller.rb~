class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
    @book = Book.find(params[:book_id])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])
    @book = Book.find(params[:book_id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new
    @book = Book.find(params[:book_id])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @book = Book.find(params[:book_id])
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    #@posts=Post.all
    @book = Book.find(params[:book_id])
    #@post = Post.new(params[:post])
    @post = @book.posts.build(params[:post])
    #@comment.author = current_user

    respond_to do |format|
      if @post.save
       # format.html { redirect_to @post, notice: 'Post was successfully created.' }
      format.html { redirect_to "/books/#{@book.id}/posts/#{@post.id}", notice: 'Post was successfully created.' }        
      format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @book = Book.find(params[:book_id])
    @post = Post.find(params[:id])
      
     respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to "/books/#{@book.id}/posts/#{@post.id}", notice: 'Post was successfully updated.' }
        #format.html { redirect_to books_post_path(@book, @post), notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @book = Book.find(params[:book_id])
    @post = Post.find(params[:id])
    @post.destroy
   
   respond_to do |format|
      format.html { redirect_to "/books/#{@book.id}/posts/" }
      format.json { head :no_content }
    end
  end
end
