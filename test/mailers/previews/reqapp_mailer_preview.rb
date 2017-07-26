# Preview all emails at http://localhost:3000/rails/mailers/reqapp_mailer
class ReqappMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/reqapp_mailer/app_conformation
  def app_conformation
    ReqappMailer.app_conformation
  end

end
