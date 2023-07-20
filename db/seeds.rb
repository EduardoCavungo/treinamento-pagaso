# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# seed.rb

# Gera 30 clientes aleatórios
30.times do
  Contato.create(
    nome: Faker::Name.name, # Utiliza a gem Faker para gerar nomes aleatórios
    email: Faker::Internet.email, # Utiliza a gem Faker para gerar emails aleatórios
    message: Faker::Lorem.paragraph # Utiliza a gem Faker para gerar mensagens aleatórias
  )
end
