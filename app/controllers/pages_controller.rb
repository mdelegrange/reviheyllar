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
    if params[:attempt_2]
      if params[:attempt_2].upcase == "HOMME"
        redirect_to homme_path
      else
        flash[:error] = "Mauvaise réponse, essayez encore..."
        render 'binoclards'
      end
    end
  end

  def homme
    if params[:attempt_3]
      if params[:attempt_3].upcase == "PRENOM" || params[:attempt_3].upcase == "PRÉNOM"
        redirect_to prenom_path
      else
        flash[:error] = "Mauvaise réponse, essayez encore..."
        render 'homme'
      end
    end
  end

  def prenom
    if params[:attempt_4]
      if params[:attempt_4].upcase == "CHAPEAU"
        redirect_to chapeau_path
      else
        flash[:error] = "Mauvaise réponse, essayez encore..."
        render 'prenom'
      end
    end
  end

  def chapeau
    if params[:attempt_5]
      if params[:attempt_5].upcase == "JULIE"
        redirect_to bravo_path
      else
        flash[:error] = "Mauvaise réponse, essayez encore..."
        render 'chapeau'
      end
    end
  end

  def bravo
  end
end
