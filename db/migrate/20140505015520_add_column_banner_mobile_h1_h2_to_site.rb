# Copyright (c) 2015 Jean Dias

class AddColumnBannerMobileH1H2ToSite < ActiveRecord::Migration
  def change
    add_column :sites, :banner_mobile_h1_h2, :string
  end
end
