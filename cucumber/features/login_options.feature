#language: pt

Funcionalidade: Login Options

Contexto: 
    Dado que estive na tela de intro
    E toquei no botão iniciar

Cenario: Posso escolher me cadastrar
    Dado que estou na tela de Tipos Login
    Quando tocar no botao cadastrar
    Então devo ver a tela de Cadastro


Cenario: Posso escolher me logar
    Dado que estou na tela de Tipos Login
    Quando tocar no botao logar
    Então devo ver a tela de Logar


