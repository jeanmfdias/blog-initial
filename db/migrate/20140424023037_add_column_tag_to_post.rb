# Copyright (c) 2015 Jean Dias

class AddColumnTagToPost < ActiveRecord::Migration
  def change
    add_column :posts, :tag, :integer
  end
end
