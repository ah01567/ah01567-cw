class HomeController < ApplicationController
  def home
  end

  def contact
  end

  def ask_for_contact
    name = params[:name]
    telephone = params[:telephone]
    email = params[:email]
    country = params[:country]
    university_name = params[:university_name]
    message = params[:message]
    if email.blank?
      flash[:alert] = I18n.t('home.ask_for_contact.add_email')
    else
      
      flash[:notice] = I18n.t('home.ask_for_contact.email_sent')
    end

   redirect_to root_path
  end
end
