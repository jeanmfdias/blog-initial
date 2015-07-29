# Copyright (c) 2015 Jean Dias

ActiveAdmin.register Newsletter do

  index do
    column :nome
    column :email
    column "Situação" do |s|
      if s.situacao == 1 
        "Permitindo o Recebimento"
      elsif s.situacao == 0 
        "Cancelado"
      else
        "A Confirmar"
      end
    end
    actions
  end

  filter :nome
  filter :email
  filter :situacao, as: :select, collection: [["Permitindo o Recebimento", 1], ["Cancelado", 0], ["A Confirmar", -1]]

  form do |f|
    f.inputs "Novo Assinante de Newsletter" do
      f.input :nome
      f.input :email
      f.input :situacao, as: :select, collection: [["Permitindo o Recebimento", 1], ["Cancelado", 0], ["A Confirmar", -1]]
    end
    f.actions
  end

  controller do

    def show
      @newsletter = Newsletter.find params[:id]
    end

    def new
      @newsletter = Newsletter.new
    end

    def create
      @newsletter = Newsletter.new permit_params
      @newsletter.save
      render 'show'
    end

    def edit
      @newsletter = Newsletter.find params[:id]
    end

    def update
      @newsletter = Newsletter.find params[:id]
      @newsletter.update_attributes permit_params
      render 'show'
    end

    def destroy
      @newsletter = Newsletter.delete params[:id]
      render 'index'
    end

    private
      def permit_params
        params.require(:newsletter).permit!
      end

  end

  permit_params :nome, :email, :situacao
  
end
