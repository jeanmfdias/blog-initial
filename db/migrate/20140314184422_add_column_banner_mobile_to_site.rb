# Copyright (c) 2015 Jean Dias

class AddColumnBannerMobileToSite < ActiveRecord::Migration
  def change
    add_column :sites, :banner_mobile, :string
  end
end
