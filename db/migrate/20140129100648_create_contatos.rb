# Copyright (c) 2015 Jean Dias

class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.string :nome
      t.string :email
      t.string :assunto
      t.text :mensagem
      t.integer :situacao

      t.timestamps
    end
  end
end
