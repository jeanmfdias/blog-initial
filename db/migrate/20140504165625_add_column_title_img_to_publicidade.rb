# Copyright (c) 2015 Jean Dias

class AddColumnTitleImgToPublicidade < ActiveRecord::Migration
  def change
    add_column :publicidades, :title_img, :string
  end
end
