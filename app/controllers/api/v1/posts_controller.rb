module Api

	module V1
		class PostsController < ApplicationController

			def home 

				@posts = Post.all
				return render json: @posts
			end

def create
	new_post = Post.create(post_params)
	return render json: @new_post
end
private post_params
params.require(:post).permit(:content, )

		end
	end
end