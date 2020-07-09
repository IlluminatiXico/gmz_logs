local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

local logs = {
	{ key = "itemrecebido", url = "https://discordapp.com/api/webhooks/728989689692029012/Tf06HLkgKN-isbT5OlCI1oLBiuMFWE0V2XgwsqXJ-lDm70Bu-X_nyd8pXzlXzcxDphNb"},
	{ key = "admin", url = "https://discordapp.com/api/webhooks/728989689692029012/Tf06HLkgKN-isbT5OlCI1oLBiuMFWE0V2XgwsqXJ-lDm70Bu-X_nyd8pXzlXzcxDphNb"},
}

AddEventHandler("gmz:logs", function(cb)
    cb(json.encode(logs))
end)

AddEventHandler("gmz:loadLogs", function(cb)
    cb(json.encode(logs))
end)

RegisterCommand('logtest',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
		local message = vRP.prompt(source,"Mensagem para teste:","")
		if message == "" then
			return
		end
		vRP.log("admin", "Teste de Log", message)
	end
end)