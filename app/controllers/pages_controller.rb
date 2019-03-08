class PagesController < ApplicationController
  before_action :set_attempt, only: [ :password, :enigme1_attempt,
    :enigme2_attempt, :enigme3_attempt, :enigme4_attempt, :enigme5_attempt]
  def home
  end

  def password
    unless @attempt.upcase == "166C21241011"
      flash[:error] = "Mauvais mot de passe, essayez encore..."
      redirect_to root_path
    end
  end

  def enigme1
    @answer = Answer.find_by(enigma: 1)
  end

  def enigme1_attempt
    if @attempt.upcase == "FAITES TOMBER LES BINOCLARDS"
      Answer.create!(enigma: 1, content: "Faites tomber les binoclards")
      redirect_to enigme2_path
    else
      flash_error
      redirect_to enigme1_path
    end
  end

  def enigme2
    @answer = Answer.find_by(enigma: 2)
    go_to_first_unsolved_enigma
  end

  def enigme2_attempt
    if @attempt.upcase == "HOMME"
      Answer.create!(enigma: 2, content: "Homme")
      redirect_to enigme3_path
    else
      flash_error
      redirect_to enigme2_path
    end
  end


  def enigme3
    @answer = Answer.find_by(enigma: 3)
    go_to_first_unsolved_enigma
  end

  def enigme3_attempt
    answers = ["PRENOM", "PRÉNOM","PRENOMS", "PRÉNOMS"]
    if answers.include?(@attempt.upcase)
      Answer.create!(enigma: 3, content: "Prénoms")
      redirect_to enigme4_path
    else
      flash_error
      redirect_to enigme3_path
    end
  end

  def enigme4
    @answer = Answer.find_by(enigma: 4)
    go_to_first_unsolved_enigma
  end

  def enigme4_attempt
    answers = ["CHAPEAU", "CHAPEAUX"]
    if answers.include?(@attempt.upcase)
      Answer.create!(enigma: 4, content: "Chapeaux")
      redirect_to enigme5_path
    else
      flash_error
      redirect_to enigme4_path
    end
  end

  def enigme5
    @answer = Answer.find_by(enigma: 5)
    go_to_first_unsolved_enigma
  end

  def enigme5_attempt
    if @attempt.upcase == "JULIE"
      Answer.create!(enigma: 5, content: "Julie")
      redirect_to bravo_path
    else
      flash_error
      render 'chapeau'
    end
  end

  def bravo
  end

  private

  def set_attempt
    @attempt = params[:attempt]
  end

  def flash_error
    flash[:error] = "#{@attempt}?!? Mauvaise réponse, essayez encore..."
  end

  def go_to_first_unsolved_enigma
    @last_answer = Answer.last
    if @answer.nil? || @last_answer.enigma < @answer.enigma
      id = Answer.last ? Answer.last.enigma + 1 : 1
      render "enigme#{id}"
      # redirect_to self.public_send("enigme#{id}_path".to_sym)
    end
  end
end
