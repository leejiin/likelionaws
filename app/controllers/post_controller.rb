class PostController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def index # 액션 
    @post = Post.all.reverse # db전체를 가져오라~~
  
  end

  def new
  end

  def create # 액션
    uploader = ImageUploader.new
    uploader.store!(params[:image])
    
    @post = Post.new #모델은 첫 글자가 무조건 대문자(파란거)
    @post.title = params[:input_title] #내용 넘어온걸 저 변수에 저장한다
    @post.content = params[:input_content]
    @post.user_id = current_user.id
    @post.image = uploader.url
    @post.thumb = uploader.thumb.url
    @post.middle = uploader.middle.url
    @post.save
    
    redirect_to "/post/index"
      
  end

  def update # 액션
    @post = Post.find(params[:id])
    @post.title = params[:input_title] #내용 넘어온걸 저 변수에 저장한다
    @post.content = params[:input_content]
    @post.save
    
    redirect_to "/post/show/" + params[:id]
    # redirect_to "/post/show/#{params[:id]}" 라고써도괜춘  
  end

  def edit # 액션
    @post = Post.find(params[:id])
  end

  def destroy #액션 
    @post = Post.find(params[:id])
    if current_user.id == @post.user_id
      @post.destroy
      redirect_to "/post/index"
    else
      redirect_to "/post/index"
    end
      
   
  end

  def show #액션
    @post = Post.find(params[:id])
  end
end
