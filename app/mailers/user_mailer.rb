class UserMailer < ApplicationMailer


def new_comment(comment_id)

	@comment = Comment.find(comment_id)
to_mail = @comment.post.user.email
	mail(

		to: to_mail,
		subject: 'new comment on your post'
		)




end





end
