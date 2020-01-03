
Dado("que estou/estive na tela de intro") do
   # wait_true(5){exists{find_element :id, 'activity_intro'}}
   @page=IntroScreen.new
  # @page.valida_se_estou_na_tela 'activity_intro'
end
  
Quando("tocar/toquei no botão iniciar") do
   # button=find_element :id, 'start_app'
    #button.click
    #screenshot('C:\QANinja2\mobile\cucumber\Print\print.png')
    @page.tocar_no_botao_iniciar
     #'start_app'
end

Então("devo ver a tela de Tipo de Login") do
    LoginOptionsSreen.new
    #@page.LoginOptionsSreen 'activity_login_option'
end