# Copyright (c) 2015 Jean Dias

class CreateExtras < ActiveRecord::Migration
  def change
    create_table :extras do |t|
      t.text :conteudo
      t.integer :situacao
      t.references :categoria, index: true

      t.timestamps
    end
  end
end
