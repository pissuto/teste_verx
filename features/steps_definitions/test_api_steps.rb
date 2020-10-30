
#validação CEP Valido
Dado('que informo um cep {string}') do |t_cep|
  @d_cep = t_cep
  log "Este e o cep pesquisado: #{@d_cep}"
end

Quando('faço uma chamada com cep valido') do
  @resu = JSON.parse(HTTParty.get("#{BASE_URL['url']}#{@d_cep}/json/").to_json)  
end

Então('verifico o codigo do IBGE') do
  log @resu["ibge"]  
end

Então('valido o cep informado') do
  log @resu["cep"]
  raise "erro" if @d_cep != @resu["cep"]
end

#valida CEP Invalido
Quando('faço uma chamada com cep invalido') do
  @resu = JSON.parse(HTTParty.get("#{BASE_URL['url']}#{@d_cep}/json/").to_json)
end

Então('valido o retorno de cep invalido') do  
  raise "[Erro]\nProblema ao consultar cep invalido!!\nRetorno: #{@resu}" if @resu["erro"] != true
end