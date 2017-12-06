# Require nos frameworks que serão utilizados no projeto
require 'cucumber'
require 'rspec/expectations'
require 'httparty'
require 'pry'
require 'pry-nav'

#seta qual o ambiente o teste deve rodar
ENV['ENV'] = 'prod' unless ENV.key?'ENV'

#salva na variável global os endereços dos ambientes
#utilizados na execução
ENVIRONMENT = YAML.load_file('./config/environment.yml')[ENV['ENV']]

#salva na variável os dados de testes do respectivo
#ambiente utilizados na execução
MASSA = YAML.load_file('./fixtures/default_data.yml')[ENV['ENV']]