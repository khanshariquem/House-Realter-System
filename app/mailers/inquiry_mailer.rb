class InquiryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.inquiry_mailer.inquiry_answered.subject
  #
  def inquiry_answered(user)
    @user = user
    mail to: user.email, subject: "HMS: Your query has been answered"
  end
end
