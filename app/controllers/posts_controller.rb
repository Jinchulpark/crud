class PostsController < ApplicationController
    #create
    def new
    #사용자가 데이터를 입력할 화면
    # 자동으로 액션 이름과 같은 화면을 불러서 사용자에게 보여줘라
    end
    
    def create
    @post = Post.new
    @post.title = params[:input_title]
    @post.content = params[:input_content]
    @post.save
    redirect_to "posts/show/#{@post.id}"
    end
    
    #Update
    def edit
        @post = Post.find(params[:post_id])
    end
    
    def update
        @post = Post.find(params[:post_id])
        #수정할 코드
        @post.title = params[:input_title]
        @post.content = params[:input_content]
        @post.save
        redirect_to "/posts/show/#{@post.id}"
    end
    
    #read
    def index
        @posts = Post.all
    end
    
    def show 
        @post = Post.find(params[:post_id])
    end
    
    
    #Delete
    def destroy
        @post = Post.find(params[:post_id])
        @post.destroy
        redirect_to'/'
    end
    
end
