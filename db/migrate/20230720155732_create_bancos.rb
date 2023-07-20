class CreateBancos < ActiveRecord::Migration[5.2]
  def change
    create_table :bancos do |t|
      t.string :nome, limit: 150
      t.string :email, limit: 100
      t.string :sigla, limit: 10
      t.string :morada, limit: 100
      t.integer :telefone
      t.string :web_site, limit: 100

      t.timestamps
    end
  end
end
