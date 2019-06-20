# Copyright (c) 2015 Jean Dias

class AddColumnAltBannerToSite < ActiveRecord::Migration
  def change
    add_column :sites, :alt_banner, :string
  end
end
