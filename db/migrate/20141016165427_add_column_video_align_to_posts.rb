# Copyright (c) 2015 Jean Dias

class AddColumnVideoAlignToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :video_align, :integer
  end
end
