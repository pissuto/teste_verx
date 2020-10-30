#language:pt
Funcionalidade: Validar consulta de CEP via API
    Sendo um usuario
    Posso consultar um endereço de CEP
 
    @cep_valido
    Cenario: Validar Retorno Cep Valido 
        Dado que informo um cep "09176-150"   
        Quando faço uma chamada com cep valido
        Então verifico o codigo do IBGE
        E valido o cep informado         
        
    @cep_invalido
    Cenario: Validar Retorno Cep Invalido 
        Dado que informo um cep "09111999"       
        Quando faço uma chamada com cep invalido
        Então valido o retorno de cep invalido
        