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
    redirect_to "/contatos"
  end

  def lista
    @contatos = Contato.all.order(id: :asc)
  end

  def editar
    @contato = Contato.find(params[:id])
  end

  def atualizar
    @contato = Contato.find(params["id"])
    @contato.nome = params["nome"]
    @contato.email = params["email"]
    @contato.message = params["message"]

    if @contato.nome.blank?
      flash["error"] = "O nome é obrigatorio"
      return render "editar"
    end

    if @contato.email.blank?
      flash["error"] = "O email é obrigatorio"
      return render "editar"
    end

    @contato.save!

    flash["sucess"] = "Contato atualizado com sucesso"
    render json: @contato.to_json, status: 200
  end

  def excluir
    contato = Contato.find(params["id"])
    contato.destroy

    flash["sucess"] = "Contato excluido com sucesso"
    render json: {}, status: 204
  end

end
