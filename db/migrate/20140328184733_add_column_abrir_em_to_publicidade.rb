# Copyright (c) 2015 Jean Dias

class AddColumnAbrirEmToPublicidade < ActiveRecord::Migration
  def change
    add_column :publicidades, :abrir_em, :string
  end
end
