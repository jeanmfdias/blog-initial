# Copyright (c) 2015 Jean Dias

class AddColumnBannerH1H2ToSite < ActiveRecord::Migration
  def change
    add_column :sites, :banner_h1_h2, :string
  end
end
