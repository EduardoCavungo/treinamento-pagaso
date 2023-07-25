class Banco < ApplicationRecord

include Bancos::Busca

  def self.busca_por_parametro(params = {})
    bancos = Banco.all
    bancos = bancos.by_nome(params[:nome]) if params[:nome].present?
    bancos = bancos.by_email(params[:email]) if params[:email].present?
    bancos = bancos.by_sigla(params[:sigla]) if params[:sigla].present?

    bancos = bancos.by_morada(params[:morada]) if params[:morada].present?
    bancos = bancos.by_telefone(params[:telefone]) if params[:telefone].present?
    bancos = bancos.by_web_site(params[:web_site]) if params[:web_site].present?
    bancos
  end

end
