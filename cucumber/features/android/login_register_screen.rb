class LoginRegister < BaseScreen

    def initialize
        @id = 'activity_sign_up'
        @botao_cadastrar = 'create_account_button' 
        valida_se_estou_na_tela @id
        @campo_nomeCompleto=$driver.find_element :id, 'fullname'
        @campo_nome=$driver.find_element :id, 'username'
        @campo_email=$driver.find_element :id, 'email'
        @campo_senha=$driver.find_element :id, 'password'
        @campo_endereco=$driver.find_element :id, 'address'
        @campo_telefone=$driver.find_element :id, 'phone_number'
    end

    
    def cadastrarLogin(usuario)
        @campo_nomeCompleto.send_keys usuario[:nomeCompleto]
        @campo_nome.send_keys usuario[:nome]
        @campo_email.send_keys usuario[:email]
        @campo_senha.send_keys usuario[:senha]
        @campo_endereco.send_keys usuario[:endereco]
        @campo_telefone.send_keys usuario[:telefone]
    end

    
    def tocar_no_botao_cadastrar
        tocar_no_botao @botao_cadastrar
    end
end