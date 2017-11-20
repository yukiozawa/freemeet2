# Preview all emails at http://localhost:3000/rails/mailers/comment_mailer
class CommentMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/comment_mailer/receive_when_comment
  def receive_when_comment
    CommentMailer.receive_when_comment
  end

end
