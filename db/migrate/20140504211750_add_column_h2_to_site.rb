# Copyright (c) 2015 Jean Dias

class AddColumnH2ToSite < ActiveRecord::Migration
  def change
    add_column :sites, :h2, :string
  end
end
