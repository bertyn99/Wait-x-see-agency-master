require 'browser'
class StaticPagesController < ApplicationController
  def accueil
    @contact = Contact.new
  end

  def mail
    @contact = Contact.create(email: params[:contact][:email], name: params[:contact][:name], message: params[:contact][:message])

    if @contact.save && verify_recaptcha(model: @contact)
      ContactMailer.contact().deliver_now
      flash[:success_fr] = "Votre message a été envoyé!"
      flash[:success_en] = "Your message has been sent!"
      redirect_back(fallback_location: root_path)
    else
      flash[:failure_fr] = "Votre message n'a pas pu être envoyé..."
      flash[:failure_en] = "Your message could not be sent..."
      redirect_back(fallback_location: root_path)
    end

  end

  def managing
    @contact = Contact.new
  end

  def marketing
    @contact = Contact.new
  end

  def branding
    @contact = Contact.new
  end

  def contact
    @contact = Contact.new
  end

  def accueil2
    @contact = Contact.new

    if browser.device.mobile?
      redirect_to presentation_path
    end
  end

end
