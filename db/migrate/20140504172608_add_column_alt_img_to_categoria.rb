# Copyright (c) 2015 Jean Dias

class AddColumnAltImgToCategoria < ActiveRecord::Migration
  def change
    add_column :categoria, :alt_img, :string
  end
end
