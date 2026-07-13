WIDTH = 1280
HEIGHT = 720

VIR_WIDTH = 432
VIR_HEIGHT = 243

push = require "push"

function love.load()
    love.graphics.setDefaultFilter("nearest","nearest")
    love.window.setMode(WIDTH,HEIGHT,{
        resizable=false,
        vsync=true,
        fullscreen=false,
    })
    push.setupScreen(VIR_WIDTH,VIR_HEIGHT, {upscale = "normal"})
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()

    end

end

function love.draw()
    push.start()
    love.graphics.printf("hello,world",0, VIR_HEIGHT/2 -6,VIR_WIDTH,"center")
    push.finish()
end
