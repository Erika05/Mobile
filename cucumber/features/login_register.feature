#language: pt

Funcionalidade: Login Register 

Contexto: 
    Dado que estive na tela de intro
    E toquei no botão iniciar
    E que estive na tela de Tipos Login
    E toquei no botao cadastrar
    
Cenario: Posso preencher o cadastro de login
    Dado que estou na tela de Cadastro
    Quando informar os campos: 
      | nomeCompleto | Erika Machado        |
      | nome         | Erika                |
      | email        | erika@qaninja.com.br |
      | senha        | 123456               |
      | endereco     | Av. Zirconio         |
      | telefone     | 12345678             |
    E acionar o salvar
   # Então o cadastro é efetuado com sucesso