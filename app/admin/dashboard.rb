# Copyright (c) 2015 Jean Dias

ActiveAdmin.register_page "Dashboard" do

  menu :priority => 0, :label => "Painel Principal"# proc{ I18n.t("active_admin.dashboard") }

  content :title => "Painel Principal" do # proc{ I18n.t("active_admin.dashboard") } do
    # div :class => "blank_slate_container", :id => "dashboard_default_message" do
    #   span :class => "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    columns do
        column do
            panel "Últimos Contatos" do
                ul do
                    Contato.order(created_at: :desc).limit(15).map do |cont|
                        li link_to(cont.nome, admin_contato_path(cont)) + ' - ' + cont.created_at
                    end
                end
            end
        end

        column do
            panel "Assinantes da Newsletter a Confirmar" do
                table do
                    Newsletter.where(situacao: -1).map do |news|
                        tr do
                            td do
                                link_to(news.nome, admin_newsletter_path(news))
                            end
                            td do
                                news.created_at
                            end
                            td do
                                news.situacao == -1 ? "A Confirmar" : "0"
                            end
                        end
                    end
                end
            end
        end
    end

  end # content

end
