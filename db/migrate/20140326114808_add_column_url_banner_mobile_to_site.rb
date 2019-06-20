# Copyright (c) 2015 Jean Dias

class AddColumnUrlBannerMobileToSite < ActiveRecord::Migration
  def change
    add_column :sites, :url_banner_mobile, :string
  end
end
