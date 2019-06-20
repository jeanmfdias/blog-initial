# Copyright (c) 2015 Jean Dias

class AddColumnH1ToSite < ActiveRecord::Migration
  def change
    add_column :sites, :h1, :string
  end
end
