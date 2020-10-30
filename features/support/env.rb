require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'faker'
require 'json'

AMB = ENV['AMB']
 ## Caminho de arquivo com definiçoes de ambiente
BASE_URL = YAML.load_file(File.dirname(__FILE__) + "/ambientes/ambientes.yml")[AMB]