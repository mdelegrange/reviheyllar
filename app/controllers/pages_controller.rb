class PagesController < ApplicationController
  def home
  end

  def password
    if params[:attempt].upcase == "166C21241011"
      render 'password_166C21241011'
    else
      flash[:error] = "Mauvais mot de passe, essayez encore..."
      render 'home'
    end
  end
end
