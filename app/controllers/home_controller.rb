class HomeController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def write
    # post = Post.new(content: params[:content], wordcount: params[:wordcount], 
    #                 charcount1: params[:charcount1], charcount2: params[:charcount2])
    post = Post.new
    post.content = params[:content]
    post.wordcount = params[:wordcount]
    post.charcount1 = params[:charcount1]
    post.charcount2 = params[:charcount2]
    post.save
    
    redirect_to root_url
  end
  
  def summary
    @posts = Post.all
  end
end
