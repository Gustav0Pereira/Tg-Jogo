function CriaArea(y,cod)
    local x = (love.graphics.getWidth( ) * 0.89)
    Area = {}
    Area.x = x
    Area.y = y
    Area.width = 80
    Area.height = 30
    Area.tipo = cod
    love.graphics.rectangle("fill", Area.x, Area.y, Area.width, Area.height)
    love.graphics.print("texto", Area.x, Area.y)
    return Area
end

function DesenhaArea()
    for i,v in ipairs(listaDeAreas) do
        love.graphics.rectangle("fill", v.x, v.y, v.width, v.height)
        love.graphics.print({{255, 0, 0, 1}, "Texto"},
                        v.x,v.y)
    end
end