# Copyright (c) 2015 Jean Dias

class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :nome
      t.string :email
      t.text :mensagem
      t.references :post, index: true
      t.integer :situacao

      t.timestamps
    end
  end
end
