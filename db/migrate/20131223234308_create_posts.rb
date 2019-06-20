# Copyright (c) 2015 Jean Dias

class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titulo
      t.text :conteudo
      t.string :url
      t.string :meta_descricao
      t.string :meta_titulo
      t.string :midia
      t.references :categoria, index: true
      t.integer :situacao

      t.timestamps
    end
  end
end
