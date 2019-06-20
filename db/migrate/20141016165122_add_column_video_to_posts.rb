# Copyright (c) 2015 Jean Dias

class AddColumnVideoToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :video, :string
  end
end
