class IntroScreen < BaseScreen
  
    def initialize
        @id = 'activity_intro'
        @botao_iniciar = 'start_app'
        valida_se_estou_na_tela @id
    end

    def tocar_no_botao_iniciar
      #  button=$driver.find_element :id, botao
      # button.click
      tocar_no_botao @botao_iniciar
    end

end