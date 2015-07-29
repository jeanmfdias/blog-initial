# Copyright (c) 2015 Jean Dias

class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :imagem
      t.string :url_destino
      t.string :titulo
      t.integer :prioridade
      t.integer :situacao

      t.timestamps
    end
  end
end
