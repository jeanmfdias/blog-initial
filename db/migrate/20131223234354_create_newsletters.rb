# Copyright (c) 2015 Jean Dias

class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :nome
      t.string :email
      t.integer :situacao

      t.timestamps
    end
  end
end
