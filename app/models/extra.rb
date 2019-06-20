# Copyright (c) 2015 Jean Dias

class Extra < ActiveRecord::Base
  belongs_to :categoria

  paginates_per 5
end
