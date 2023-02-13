require 'dotenv/load'
class ContactMailer < ApplicationMailer
  def contact
    mail(to: ENV['EMAIL_RECEIVER'], subject: "Prise de contact")
  end
end
