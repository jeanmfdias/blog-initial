# Copyright (c) 2015 Jean Dias

class CreateBuscas < ActiveRecord::Migration
  def change
    create_table :buscas do |t|
      t.string :termo
      t.string :navegador
      t.string :so

      t.timestamps
    end
  end
end
