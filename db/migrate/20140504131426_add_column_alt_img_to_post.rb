# Copyright (c) 2015 Jean Dias

class AddColumnAltImgToPost < ActiveRecord::Migration
  def change
    add_column :posts, :alt_img, :string
  end
end
