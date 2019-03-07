class PagesController < ApplicationController
  def home
  end

  def password
    unless params[:attempt].upcase == "166C21241011"
      flash[:error] = "Mauvais mot de passe, essayez encore..."
      redirect_to root_path
    end
  end

  def enigme1
  end

  def enigme1_attempt
    if params[:attempt].upcase == "FAITES TOMBER LES BINOCLARDS"
      redirect_to enigme2_path
    else
      flash[:error] = "Mauvaise réponse, essayez encore..."
      redirect_to enigme1_path
    end
  end

  def enigme2
  end

  def enigme2_attempt
    if params[:attempt_2].upcase == "HOMME"
      redirect_to emigme3_path
    else
      flash[:error] = "Mauvaise réponse, essayez encore..."
      redirect_to enigme2_path
    end
  end


  def enigme3
  end

  def enigme3_attempt
    if params[:attempt_3]
      if params[:attempt_3].upcase == "PRENOM" || params[:attempt_3].upcase == "PRÉNOM"
        redirect_to prenom_path
      else
        flash[:error] = "Mauvaise réponse, essayez encore..."
        render 'homme'
      end
    end
  end

  def enigme4
  end

  def enigme4_attempt
    if params[:attempt_4]
      if params[:attempt_4].upcase == "CHAPEAU"
        redirect_to chapeau_path
      else
        flash[:error] = "Mauvaise réponse, essayez encore..."
        render 'prenom'
      end
    end
  end

  def enigme5
  end

  def enigme5_attempt
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
