class CommentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comment_mailer.receive_when_comment.subject
  #
  def receive_when_comment(free_post, user, email)
    @free_post = free_post
    @user = user
    @email = email
    mail to: email,
    subject: "「Free Meet!」コメントを受け取りました！"

  end
end



