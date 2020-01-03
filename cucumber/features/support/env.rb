require 'appium_lib'
require 'appium_console'
require 'pry'


#1- Abrir app
#1.1-Descobrir quais as caps eu desejo
caps_path=File.join(File.dirname(__FILE__), '..','..','appium.txt')
caps=Appium.load_appium_txt file: caps_path, verbose: true

#1.2
Appium::Driver.new(caps, true)
class AppiumWorld
end

Appium.promote_appium_methods AppiumWorld

World do 
    AppiumWorld.new
end
$driver.start_driver

#Reinstalar o meu aplicativo
#$driver.remove_app "com.inducesmile.androidecommerceshop"
FeatureMemory = Struct.new(:feature).new

Before do |scenario|
    begin
        @feature_name = scenario.scenario_outline.feature.name
    rescue
        @feature_name=scenario.feature.name
    end

    if FeatureMemory.feature!= @feature_name
        $driver.remove_app "com.inducesmile.androidecommerceshop"
    end
    $driver.launch_app
    FeatureMemory.feature= @feature_name
end        


#3-Fechar o aplicativo
#Before{$driver.start_driver}

After do |scenario|
    path = 'C:\QANinja2\mobile\cucumber\Print'
    #('C:\QANinja2\mobile\cucumber\Print\print.png')
    file_name = "screenshot_#{Time.now.strftime('%Y%m%d%H%M%S')}.png"    
    embed screenshot(File.join(path, file_name)),'image/png' if scenario.failed?
$driver.close_app
#$driver.driver_quit }
end
