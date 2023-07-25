class Banco < ApplicationRecord

  scope :by_nome, ->(nome) { where("lower(nome) like ?", "%#{nome.downcase}%") if nome.present? }
  scope :by_email, ->(email) { where("lower(email) like ?", "%#{email.downcase}%") if email.present? }
  scope :by_sigla, ->(sigla) { where("lower(sigla) like ?", "%#{sigla.downcase}%") if sigla.present? }

  scope :by_morada, ->(morada) { where("lower(morada) like ?", "%#{morada.downcase}%") if morada.present? }
  scope :by_telefone, ->(telefone) { where("lower(telefone) like ?", "%#{telefone.downcase}%") if telefone.present? }
  scope :by_web_site, ->(web_site) { where("lower(web_site) like ?", "%#{web_site.downcase}%") if web_site.present? }

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
