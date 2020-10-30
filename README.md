# Software e Configuração:
- Neste projeto estou fazendo automação de testes web usando [Ruby](https://www.ruby-lang.org/pt/) como linguagem de programação, [RSpec](https://rspec.info/) ações e validações, [Cucumber](https://cucumber.io/) para interpretação de Scenarios, Steps e construção da estrutura.
  - Não estou especificando versões para minhas Gems
  - Minhas declaraçoes de dependencias estão no arquivo Gemfile
  - Tudo o que será executado nesse projeto está sendo declarado no cucumber.yml
# Sobre a Automação
  - 1 - Criar uma funcionalidade para consultar os dados de um endereço a partir de um CEP.
  - 2 - Cenários:
    - 2.1 - Criar um cenário de sucesso na consulta, printando o código do IBGE do endereço no    stdout.
    - 2.2 - Criar um cenário passando um CEP inválido
## Options
* `AMB` - Em qual ambiente o teste deve ser executado
    * `qa` <- default
    * `prod`
## Comando para executar testes exemplos:
  - cucumber -t @cep_valido AMB=qa
  - cucumber -t @cep_invalido AMB=qa