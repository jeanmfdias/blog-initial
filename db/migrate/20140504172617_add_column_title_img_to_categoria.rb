# Copyright (c) 2015 Jean Dias

class AddColumnTitleImgToCategoria < ActiveRecord::Migration
  def change
    add_column :categoria, :title_img, :string
  end
end
