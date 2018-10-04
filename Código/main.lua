local Contador = 1

function love.load()
    Object = require "classic"
    require "botoes"
    require "jogador"
    require "Areas"

    background = love.graphics.newImage("background.jpg")
    local y = (love.graphics.getWidth( ) * 0.7)
    CriarBotao("  Cima  ", 30,  y, "Cima")
    CriarBotao(" Baixo ",  245, y, "Baixo")
    CriarBotao("Esquerda", 100, y, "Esquerda")
    CriarBotao("Direita",  182, y, "Direita")
    
    CriarBotaoIniciar(705, y)
    
    CriaJogador(30,30)

    listaDeAreas = {}
end

function love.update(dt)
    updateButtons()
    if (Iniciar == true) then
        Contador = MoveJogador(Contador)
    end
end

function love.draw()
    for i = 0, love.graphics.getWidth() / background:getWidth() do
        for j = 0, love.graphics.getHeight() / background:getHeight() do
            love.graphics.draw(background, i * background:getWidth(), j * background:getHeight())
        end
    end
    
    drawButtons()
    DesenhaArea()
    love.graphics.rectangle("fill", Jogador.x, Jogador.y, Jogador.width, Jogador.height)
end


