class BaseScreen
    def valida_se_estou_na_tela(tela)
        $driver.wait_true(5){$driver.exists{$driver.find_element :id, tela}}
    end

    def tocar_no_botao(botao)
        button=$driver.find_element :id, botao
        button.click
      end
end