# Copyright (c) 2015 Jean Dias

class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :nome
      t.string :meta_descricao
      t.string :meta_titulo
      t.string :autor

      t.timestamps
    end
  end
end
