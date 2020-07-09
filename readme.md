# [C#] Sistema de Logs

O novo sistema de logs veio para acabar com as centenas de Web Hooks existentes na base, com esse script você pode centralizar todos os seus logs em um só local. 

Acesse a GMZ Community no discord e fique por dentro de novos scripts:
[https://discord.gg/J2MVhGJ](https://discord.gg/J2MVhGJ "https://discord.gg/J2MVhGJ")

- Fácil Instalação 
- Fácil Configuração

**Recursos:** 
- Possibilidade de criar logs ilimitados 
- Possibilidade definir as salas do discord para cada tipo de log 
- Utilização de apenas um comando para implementação do log em qualquer local ou script da sua base 

**Como instalar?** 

1. Realize o download do projeto em: [https://github.com/dvGomez/gmz_logs](https://github.com/dvGomez/gmz_logs "https://github.com/dvGomez/gmz_logs") 
2. Descompacte e mova a pasta gmz_logs para [resources]/ 
3. Inicie o script com o comando start gmz_logs Insira o código na ultima linha do script `/vrp/base.lua` da sua base:

```
function vRP.log(type, title, message)
    TriggerEvent("gmz:sendLog", type, title, message)
end
```

**Como configurar?** 

1. Acesse o arquivo server.lua do script localizado dentro da pasta `gmz_logs`. 
2. Você irá encontrar uma lista de logs, que deverá ser configurado por você, por exemplo:

![enter image description here](https://i.imgur.com/ss7FU8W.png)

3. Segue explicação dos parâmetros: 
- key = `chave que deverá ser utilizada para identificação do seu log` 
- url = `webhook da sua sala no discord`  

**Exemplo de funcionamento:** No exemplo abaixo, vamos criar um log toda vez que algum jogador receber um item no inventario: 

1. Vamos criar uma chave chamada de `itemrecebido` e inserir nosso webhook, exemplo:

![enter image description here](https://i.imgur.com/nGPwmRK.png)

2. Vamos até a nossa base e vamos inserir a linha de código abaixo no método `vRP.giveInventoryItem`:

![enter image description here](https://i.imgur.com/dsu4P4f.png)

> Obs: O primeiro parâemetro `itemrecebido`, deve ser o nome da key que você definiu no script `gmz_logs`

3. Segue exemplo de como a mensagem fica no discord:
![enter image description here](https://i.imgur.com/rF8hQ9e.png)
