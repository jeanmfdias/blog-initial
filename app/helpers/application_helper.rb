# Copyright (c) 2015 Jean Dias

module ApplicationHelper

	def postdate(data)
		meses = ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez']
		dia = data.strftime("%d")
		mes = data.strftime("%m")
		mes = meses[mes.to_i - 1]
		dia.to_s + ' ' + mes.to_s
	end

	def root_url
		if ENV['RAILS_ENV'] == 'production'
			'http://www.blog-initial.com'
		elsif ENV['RAILS_ENV'] == 'development'
			'http://localhost:3000'
		end				
	end

end
