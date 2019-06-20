# Copyright (c) 2015 Jean Dias

class AddColumnAltImgToPublicidade < ActiveRecord::Migration
  def change
    add_column :publicidades, :alt_img, :string
  end
end
