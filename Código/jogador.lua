require "Areas"

function CriaJogador(width, height)
    Jogador = {}
    Jogador.x = 70
    Jogador.y = 70
    Jogador.width = width
    Jogador.height = height
    Jogador.xSpeed = 0
    Jogador.ySpeed = 0

    limite = {Jogador.y - 105, Jogador.y + 105, Jogador.x - 105, Jogador.x + 105 }
    Contador = 1
end

function tablelength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
  end

function MoveJogador(Contador)
    dt = love.timer.getDelta()
    print("Count: " .. Contador)
    if tablelength(listaDeAreas) < Contador then
        print("Acabou!")
        Iniciar = false
    elseif listaDeAreas[Contador].tipo == "Cima" then
        if (Jogador.y > limite[1]) then
            Jogador.y = Jogador.y - 100 * dt
        else
            Contador = Contador + 1
            limite[1] = limite[1] - 100
        end
    elseif listaDeAreas[Contador].tipo == "Baixo" then
        if Jogador.y < limite[2] then
            Jogador.y = Jogador.y + 100 * dt
        else
            Contador = Contador + 1
            limite[2] = limite[2] + 100
        end
    elseif listaDeAreas[Contador].tipo == "Esquerda"  then
        if Jogador.x > limite[3] then
            Jogador.x = Jogador.x - 100 * dt
        else
            Contador = Contador + 1
            limite[3] = limite[3] - 100
        end
    elseif listaDeAreas[Contador].tipo == "Direita" then
        print(Jogador.x .. " x " .. limite[4])
        if Jogador.x < limite[4] then
            Jogador.x = Jogador.x + 100 * dt
        else
            Contador = Contador + 1
            limite[4] = limite[4] + 100
        end
    end
    return Contador
end

function IrParaCima(dt)
end
function IrParaBaixo(dt, pos)
    while (Jogador.y < pos) do
        Jogador.y = Jogador.y + 1
    end
end
function IrParaEsquerda()

end
function IrParaDireita()

end

function DesenhaJogador() 
    love.graphics.rectangle("fill", Jogador.x, Jogador.y, Jogador.width, Jogador.height)
end
