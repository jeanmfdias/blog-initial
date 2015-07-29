# Copyright (c) 2015 Jean Dias

class AddColumnTitleBannerToSite < ActiveRecord::Migration
  def change
    add_column :sites, :title_banner, :string
  end
end
