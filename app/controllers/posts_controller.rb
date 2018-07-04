class PostsController < ApplicationController
	before_action :authenticate_user! ,only: [:create , :destroy]
	before_action :set_post, only: [:destroy]
	before_action :authorize_user, only: [:destroy]
  def home
  	@post = Post.new
  	@posts = Post.all
  end

  def create
  	@post = Post.create(content: params[:post][:content],user_id: current_user.id)
  	@post.save
  	redirect_to action: "home"
  end

  def destroy
  	
  	 	@post.destroy
  	 
  	redirect_to action: "home"
  end



private
def set_post
@post = Post.find(params[:id])

	end

	def authorize_user
		if (@post.user.id != current_user.id)
			redirect_to action: "home"
	end

end
end