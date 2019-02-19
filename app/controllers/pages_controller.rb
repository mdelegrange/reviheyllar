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

  def enigme1
    if params[:attempt]
      if params[:attempt].upcase == "FAITES TOMBER LES BINOCLARDS"
        redirect_to binoclards_path
      else
        flash[:error] = "Mauvaise réponse, essayez encore..."
        render 'enigme1'
      end
    end
  end

  def binoclards
    if params[:attempt]
      if params[:attempt].upcase == "HOMME"
        redirect_to homme_path
      else
        flash[:error] = "Mauvaise réponse, essayez encore..."
        render 'binoclards'
      end
    end
  end

  def homme
  end
end
