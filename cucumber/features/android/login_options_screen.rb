class LoginOptionsSreen < BaseScreen

    def initialize
        @id = 'activity_login_option'
        @botao_iniciar_login = 'sign_in'
        @botao_iniciar_cadastro = 'sign_up'
        valida_se_estou_na_tela @id
    end


    def tocar_no_botao_iniciar_login
      tocar_no_botao @botao_iniciar_login
    end

    def tocar_no_botao_iniciar_cadastro
        tocar_no_botao  @botao_iniciar_cadastro
    end
end