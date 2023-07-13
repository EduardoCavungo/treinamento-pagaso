class ContatoController < ApplicationController

  def index

  end

  def contato

  end

  def cadastrar
    nome = params["nome"]
    email = params["email"]
    message = params["message"]

    if nome.blank?
      flash["error"] = "O nome é obrigatorio"
      return render "index"
    end

    if email.blank?
      flash["error"] = "O email é obrigatorio"
      return render "index"
    end

    Contato.create!(nome: nome, email: email, message: message)

    flash["success"] = "Contacto cadastrado com sucesso"
    redirect_to "/"
  end

  def lista

    @contatos = Contato.all

  end


end
