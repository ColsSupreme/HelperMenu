CF = nil

Citizen.CreateThread(function()
	while CF == nil do 
        Citizen.Wait(0)
        TriggerEvent('cf:getSharedObject', function(obj) CF = obj end)
    end
    
end)

RegisterCommand("help", function(source, args, raw)
menu()
end)

function menu()
    local _elements = {}
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Website: Villainsrp.com</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Discord: Discord.gg/villainsrp</b>",   value = 'dis'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Teamspeak: ts.Villainsrp.com</b>",   value = 'ts'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Cad: cad.Villainsrp.com</b>",   value = 'cad'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Rules: rules.Villainsrp.com</b>",   value = 'cad'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>vMenu: F1</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Inventory: Y</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Roleplay menu: M</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Check Trustscore: /trustscore (Your ID)</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Action command: /me or //me</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>OOC chat: /ooc or //</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Hands up & Hands up Kneel: /hu &/huk</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Balance: /balance</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Tweet: /tweet (message)</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Emote Menu: /emotemenu</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Pay: /pay (RecipentID) (Amount)</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>ATM: /atm (w/d) (Amount)</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Black Market: /BM</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Delete Vehicle: /dv</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>911: /911</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>advert: /advert</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Emote: /emote (emote name)</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Change seat: /shuff</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Open door: /door</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Open windows: /windows</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Open hood: /hood</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Open trunk: /trunk</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Carry person: /carry</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Respawn: /respawn [location]</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Revive: /revive</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Take Hostage: /th</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Call staff: @ [reason]</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Crouch: x</b>",   value = 'Web'})
    table.insert(_elements, {label = "<span style='color: #ffffff'><b>Prone: ctrl</b>",   value = 'Web'})
    table.insert(_elements, {label = '<span style="color: red"><b>Exit</b></span>',       value = 'exit'})
    CF.UI.Menu.CloseAll()

    CF.UI.Menu.Open('default1', GetCurrentResourceName(), 'jeweler_actions', {
        title    = "Help Menu",
        align    = 'top-right',
        elements = _elements,
	},function(data, menu)
        if data.current.value == 'exit' then
			menu.close()		
		end
        end)

end