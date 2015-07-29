# Copyright (c) 2015 Jean Dias

class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.string :nome
      t.text :descricao
      t.string :url
      t.string :meta_descricao
      t.string :meta_titulo
      t.references :categoria, index: true
      t.integer :situacao

      t.timestamps
    end
  end
end
