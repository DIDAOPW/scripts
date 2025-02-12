local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Criminal Tycoon", "1.0",
    SubTitle = "Youtube -> yFriderichs",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})


local Tabs = {
    Main = Window:AddTab({ Title = "Teleporte", Icon = "droplet" }),
    Universais = Window:AddTab({ Title = "Universais", Icon = "star"}),
    Settings = Window:AddTab({ Title = "Configurações", Icon = "settings" })
}

Tabs.Main:AddParagraph({ Title = "Opções em modo teste!", Content = "Teleporte para esses locais!" })

Tabs.Settings:AddParagraph({ Title = "Configurações", Content = "o titulo é alto explicativo, né?" })

--DROPDOWN para Menu Teleporte main
--DROPDOWN MERCADOS


local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
    Title = "Tp Mercados",
    Values = {"Mercado","Mercado(deserto)"},
    Multi = false,
    Default = Nenhum,

    Callback = function(selecionar) -- Adicionando um callback
        if selecionar == "Mercado" then
			local mercado1 = game.workspace.Map.Supermarket.Alarm.Capsule
			local player = game.Players.LocalPlayer
			local coordenada = player.character:WaitForChild("HumanoidRootPart")

			if mercado1 then
			coordenada.CFrame = mercado1.CFrame
			else print("deu ruim")
			end

	elseif selecionar == "Mercado(deserto)" then
		local bancoChildren = game.workspace.Map.SupermarketDesert.BuildingIcon.IconPart
		local personagem = game.Players.LocalPlayer
		local coordenadaNossa = personagem.Character:WaitForChild("HumanoidRootPart")

		if bancoChildren then
    	coordenadaNossa.CFrame = bancoChildren.CFrame
		print("teleportado!")
		end	
	end
end
})

--DROPDOWN POSTO DE GASOLINA

local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
    Title = "Tp Gasolina",
    Values = {"Posto Gasolina","Posto Gasolina(deserto)"},
    Multi = false,
    Default = Nenhum,

    Callback = function(selecionar) -- Adicionando um callback
        if selecionar == "Posto Gasolina" then
			local mercado1 = game.workspace.Map.GasStation.Alarm.Capsule
			local player = game.Players.LocalPlayer
			local coordenada = player.character:WaitForChild("HumanoidRootPart")

			if mercado1 then
			coordenada.CFrame = mercado1.CFrame
			else print("deu ruim")
			end

	elseif selecionar == "Posto Gasolina(deserto)" then
		local bancoChildren = game.workspace.Map.GasStationDesert.Alarms.Alarm.Capsule
		local personagem = game.Players.LocalPlayer
		local coordenadaNossa = personagem.Character:WaitForChild("HumanoidRootPart")

		if bancoChildren then
    	coordenadaNossa.CFrame = bancoChildren.CFrame
		print("teleportado!")
		end	
	end
end
})

--BOTOES TELEPORTE

    Tabs.Main:AddButton({
        Title = "Tp Banco",
        Description = "Teleporte para Banco",
        Callback = function()
            Window:Dialog({
                Title = "Quer mesmo?",
                Content = "Você teleportará para o banco.",
                Buttons = {
                    {
                        Title = "Confirmar",
                        Callback = function()
                            print("Confirmou teleporte")

local bancoChildren = game.workspace.Map.Bank.Alarms:GetChildren()[5].Capsule
local personagem = game.Players.LocalPlayer
local coordenadaNossa = personagem.Character:WaitForChild("HumanoidRootPart")

if bancoChildren then
    coordenadaNossa.CFrame = bancoChildren.CFrame
	print("teleportado!")
else
    print("problema")
end




                        end
                    },
                    {
                        Title = "Cancelar",
                        Callback = function()
                            print("Cancelou teleporte")
                        end
                    }
                }
            })
        end
    })

  Tabs.Main:AddButton({
        Title = "Tp Joalheria",
        Description = "Teleporte para Joalheria",
        Callback = function()
            Window:Dialog({
                Title = "Quer mesmo?",
                Content = "Você teleportará para a Joalheria.",
                Buttons = {
                    {
                        Title = "Confirmar",
                        Callback = function()
                            print("Confirmou teleporte")


local bancoChildren = game.workspace.Map.JewelryStore.Alarms:GetChildren()[3].Capsule
local personagem = game.Players.LocalPlayer
local coordenadaNossa = personagem.Character:WaitForChild("HumanoidRootPart")

if bancoChildren then
    coordenadaNossa.CFrame = bancoChildren.CFrame
	print("teleportado!")
else
    print("problema")
end


                        end
                    },
                    {
                        Title = "Cancelar",
                        Callback = function()
                            print("Cancelou teleporte")
                        end
                    }
                }
            })
        end
    })

Tabs.Main:AddButton({
        Title = "Tp Lab",
        Description = "Teleporte para Laboratorio",
        Callback = function()
            Window:Dialog({
                Title = "Quer mesmo?",
                Content = "Você teleportará para Laboratorio.",
                Buttons = {
                    {
                        Title = "Confirmar",
                        Callback = function()
                            print("Confirmou teleporte")


local bancoChildren = game.workspace.Map.Laboratory.Toll.Stuffs.Model:GetChildren()[9]:GetChildren()[2]
local personagem = game.Players.LocalPlayer
local coordenadaNossa = personagem.Character:WaitForChild("HumanoidRootPart")

if bancoChildren then
    coordenadaNossa.CFrame = bancoChildren.CFrame
	print("teleportado!")
else
    print("problema")
end


                        end
                    },
                    {
                        Title = "Cancelar",
                        Callback = function()
                            print("Cancelou teleporte")
                        end
                    }
                }
            })
        end
    })

Tabs.Main:AddButton({
        Title = "Tp FA",
        Description = "Teleporte para Forças Aereas",
        Callback = function()
            Window:Dialog({
                Title = "Quer mesmo?",
                Content = "Você teleportará para Forças Aereas",
                Buttons = {
                    {
                        Title = "Confirmar",
                        Callback = function()
                            print("Confirmou teleporte")


local bancoChildren = game.workspace.Map.AirForce.Alarms.Alarm.Capsule
local personagem = game.Players.LocalPlayer
local coordenadaNossa = personagem.Character:WaitForChild("HumanoidRootPart")

if bancoChildren then
    coordenadaNossa.CFrame = bancoChildren.CFrame * CFrame.new(0,15,0)
	print("teleportado!")
else
    print("problema")
end


                        end
                    },
                    {
                        Title = "Cancelar",
                        Callback = function()
                            print("Cancelou teleporte")
                        end
                    }
                }
            })
        end
    })

Tabs.Main:AddButton({
        Title = "Tp Petroleo",
        Description = "Teleporte para Petrolifera",
        Callback = function()
            Window:Dialog({
                Title = "Quer mesmo?",
                Content = "Você teleportará para Plataforma Petrolifera ",
                Buttons = {
                    {
                        Title = "Confirmar",
                        Callback = function()
                            print("Confirmou teleporte")


local bancoChildren = game.workspace.Map.OilRig.Alarms:GetChildren()[2].Capsule
local personagem = game.Players.LocalPlayer
local coordenadaNossa = personagem.Character:WaitForChild("HumanoidRootPart")

if bancoChildren then
    coordenadaNossa.CFrame = bancoChildren.CFrame * CFrame.new(0,15,0)
	print("teleportado!")
else
    print("problema")
end


                        end
                    },
                    {
                        Title = "Cancelar",
                        Callback = function()
                            print("Cancelou teleporte")
                        end
                    }
                }
            })
        end
    })

Tabs.Main:AddButton({
        Title = "Tp NA",
        Description = "Teleporte para Navio Militar",
        Callback = function()
            Window:Dialog({
                Title = "Quer mesmo?",
                Content = "Você teleportará para Navio Militar ",
                Buttons = {
                    {
                        Title = "Confirmar",
                        Callback = function()
                            print("Confirmou teleporte")


local bancoChildren = game.workspace.Map.Carrier.Alarms.Alarm.Capsule
local personagem = game.Players.LocalPlayer
local coordenadaNossa = personagem.Character:WaitForChild("HumanoidRootPart")

if bancoChildren then
    coordenadaNossa.CFrame = bancoChildren.CFrame * CFrame.new(-10,0,100)
	print("teleportado!")
else
    print("problema")
end


                        end
                    },
                    {
                        Title = "Cancelar",
                        Callback = function()
                            print("Cancelou teleporte")
                        end
                    }
                }
            })
        end
    })


Tabs.Main:AddButton({
        Title = "Tp Containers",
        Description = "Teleporte para Roubo dos Containers",
        Callback = function()
            Window:Dialog({
                Title = "Quer mesmo?",
                Content = "Você teleportará para Containers",
                Buttons = {
                    {
                        Title = "Confirmar",
                        Callback = function()
                            print("Confirmou teleporte")


local bancoChildren = game.workspace.Map.Dock.Alarms:GetChildren()[3].Capsule
local personagem = game.Players.LocalPlayer
local coordenadaNossa = personagem.Character:WaitForChild("HumanoidRootPart")

if bancoChildren then
    coordenadaNossa.CFrame = bancoChildren.CFrame * CFrame.new(5,0,2)
	print("teleportado!")
else
    print("problema")
end

                        end
                    },
                    {
                        Title = "Cancelar",
                        Callback = function()
                            print("Cancelou teleporte")
                        end
                    }
                }
            })
        end
    })




 -- menu universais ou melhor, scripts universais


    Tabs.Universais:AddButton({
        Title = "Script Dex",
        Description = "Util para desenvolvimento",
        Callback = function()
            Window:Dialog({
                Title = "Quer mesmo?",
                Content = "Script Dex.",
                Buttons = {
                    {
                        Title = "Confirmar",
                        Callback = function()
                            print("Confirmou Script")


loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()



                        end
                    },
                    {
                        Title = "Cancelar",
                        Callback = function()
                            print("Cancelou Script")
                        end
                    }
                }
            })
        end
    })

 Tabs.Settings:AddButton({
        Title = "Meu Canal do Yt!",
        Description = "se inscrevam la :)",
        Callback = function()
            Window:Dialog({
                Title = "Quer mesmo?",
                Content = "Você copiará a url do meu canal",
                Buttons = {
                    {
                        Title = "Confirmar",
                        Callback = function()
                            print("Copiou com sucesso")

local url = "https://www.youtube.com/@Didonm"

setclipboard(url)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Canal do YouTube",
    Text = "Link copiado! Cole no seu navegador.",
    Duration = 5
})




                        end
                    },
                    {
                        Title = "Cancelar",
                        Callback = function()
                            print("Cancelou")
                        end
                    }
                }
            })
        end
    })

Window:SelectTab(1)


