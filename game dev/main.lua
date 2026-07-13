X = 1280
Y = 720

function love.load()
    love.window.setMode(X,Y,{
        resizable=false,
        vsync=true,
        fullscreen=false,
    })
end

function love.draw()
    love.graphics.printf("hello,world",0, X/2 -6,Y,"center")
end
