# Copyright (c) 2015 Jean Dias

class AddColumnTitleLinkToCategoria < ActiveRecord::Migration
  def change
    add_column :categoria, :title_link, :string
  end
end
