class CommentsController < ApplicationController
  before_filter :authenticate_user!
  
  def create
    @post = Post.find(params[:post_id])
    @coment = @post.comments.create(params[:comment])

    respond_to do |format|
      if @post.save
        format.html { redirect_to(@post, :notice => 'Comment was successfully created.') }
        format.xml  { render :xml => @post, :status => :created, :location => @post }
      else
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end
  
end
