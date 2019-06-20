# Copyright (c) 2015 Jean Dias

class AddColumnTitleLinkToPost < ActiveRecord::Migration
  def change
    add_column :posts, :title_link, :string
  end
end
