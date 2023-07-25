module Bancos
  module Busca
    extend ActiveSupport::Concern

  included do
    scope :by_nome, ->(nome) { where("lower(nome) like ?", "%#{nome.downcase}%") if nome.present? }
    scope :by_email, ->(email) { where("lower(email) like ?", "%#{email.downcase}%") if email.present? }
    scope :by_sigla, ->(sigla) { where("lower(sigla) like ?", "%#{sigla.downcase}%") if sigla.present? }

    scope :by_morada, ->(morada) { where("lower(morada) like ?", "%#{morada.downcase}%") if morada.present? }
    scope :by_telefone, ->(telefone) { where("lower(telefone) like ?", "%#{telefone.downcase}%") if telefone.present? }
    scope :by_web_site, ->(web_site) { where("lower(web_site) like ?", "%#{web_site.downcase}%") if web_site.present? }
  end
end
end
