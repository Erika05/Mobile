class Login < BaseScreen

    def initialize
        @id = 'activity_login'
        #@botao_iniciar = 'sign_in'
        valida_se_estou_na_tela @id
    end

    def tocar_no_botao_iniciar
        tocar_no_botao @botao_iniciar
    end
end