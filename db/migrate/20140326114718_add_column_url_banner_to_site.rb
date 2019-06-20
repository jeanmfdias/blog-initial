# Copyright (c) 2015 Jean Dias

class AddColumnUrlBannerToSite < ActiveRecord::Migration
  def change
    add_column :sites, :url_banner, :string
  end
end
