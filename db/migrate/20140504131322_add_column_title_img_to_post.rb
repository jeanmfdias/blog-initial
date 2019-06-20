# Copyright (c) 2015 Jean Dias

class AddColumnTitleImgToPost < ActiveRecord::Migration
  def change
    add_column :posts, :title_img, :string
  end
end
