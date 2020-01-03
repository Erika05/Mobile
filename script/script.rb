require 'appium_lib'

#1- Abrir app
#1.1-Descobrir quais as caps eu desejo
caps_path=File.join(File.dirname(__FILE__), 'appium.txt')
caps=Appium.load_appium_txt file: caps_path, verbose: true

#1.2
Appium::Driver.new(caps, true)
$driver.start_driver

#Reinstalar o meu aplicativo
$driver.remove_app "com.inducesmile.androidecommerceshop"
$driver.launch_app

#2-Executar os comandos (Session)

#2.1 Intro Screen (activity_intro) -Dado

$driver.wait_true(5){$driver.exists{$driver.find_element :id, 'activity_intro'}}

#Quando
button=$driver.find_element :id, 'start_app'
button.click

#Então
#2.2-Login Option Screen(Activity_login_option)
$driver.wait_true(5){$driver.exists{$driver.find_element :id,'activity_login_option'}}

#2.3-Clicar no botão signup
button=$driver.find_element :id, 'sign_up'
button.click

#2.4-Signup screen (Activity_sign_up)
$driver.wait_true(5){$driver.exists{$driver.find_element :id,'activity_sign_up'}}

#2.5-Digitar meu nome
edit=$driver.find_element :id, 'fullname'
edit.send_keys 'Erika Machado'



