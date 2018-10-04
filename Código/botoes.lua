require("button")
require "Areas"
local yArea = 0
Iniciar = false

function CriarBotao(texto, x,y, cod)
    button:new(function()
    yArea = yArea + 35
    table.insert(listaDeAreas, CriaArea(yArea, cod))
    end, texto, x, y, 5, 9, {0,0,0}
    )
end

function CriarBotaoIniciar(x, y)
    button:new(function()
    Iniciar = true
    end, "Começar", x, y, 5, 9, {0,0,0}
    )
end