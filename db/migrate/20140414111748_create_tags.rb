# Copyright (c) 2015 Jean Dias

class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :nome
      t.text :descricao
      t.integer :situacao

      t.timestamps
    end
  end
end
