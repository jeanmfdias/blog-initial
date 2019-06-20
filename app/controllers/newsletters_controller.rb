# Copyright (c) 2015 Jean Dias

class NewslettersController < ApplicationController

	def create
		@newsletter = Newsletter.new permit_params
		if @newsletter.save
			redirect_to action: :index, controller: :principal, :notice => "newsletter-cadastrada"
		end
	end

	private
		def permit_params
			params.require(:newsletter).permit!
		end

end
