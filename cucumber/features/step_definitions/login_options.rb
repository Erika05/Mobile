
Dado("que estou/estive na tela de Tipos Login") do
   # wait_true(5){exists{find_element :id,'activity_login_option'}}
   @page=LoginOptionsSreen.new
end
  
Quando("tocar/toquei no botao cadastrar") do
    #button=find_element :id, 'sign_up'
    #button.click
    @page.tocar_no_botao_iniciar_cadastro
end
    
Quando("tocar no botao logar") do
   # button=find_element :id, 'sign_in'
    #button.click
    @page.tocar_no_botao_iniciar_login
end

Então("devo ver a tela de Cadastro") do
    LoginRegister.new
   # wait_true(5){exists{find_element :id,'activity_sign_up'}}
end
  
Então("devo ver a tela de Logar") do
    #wait_true(5){exists{find_element :id,'activity_login'}}
    Login.new
end