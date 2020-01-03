

Dado("que estou na tela de Cadastro") do
    #wait_true(5){exists{find_element :id,'activity_sign_up'}}
    @page=LoginRegister.new

end
  
Quando("informar os campos:") do |table|
  @usuario= table.rows_hash
  @page.cadastrarLogin(@usuario)  
end
  
Quando("acionar o salvar") do
    @page.tocar_no_botao_cadastrar
end
  
#Então("o cadastro é efetuado com sucesso") do
    "Cadastro com sucesso"
#end