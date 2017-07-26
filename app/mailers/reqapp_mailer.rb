class ReqappMailer < ApplicationMailer
default from: "ps.vamsik@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reqapp_mailer.app_conformation.subject
  #
  def app_conformation
   @greeting ="hi"
    mail to: "vpolam@memphis.edu" , subject: "requesting appointment"
  end
end
