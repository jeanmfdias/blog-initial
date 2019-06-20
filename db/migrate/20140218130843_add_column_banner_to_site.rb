# Copyright (c) 2015 Jean Dias

class AddColumnBannerToSite < ActiveRecord::Migration
  def change
    add_column :sites, :banner, :string
  end
end
