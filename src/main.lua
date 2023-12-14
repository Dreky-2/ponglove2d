  function love.load()
  math.randomseed(os.time())
  Object = require "classic"
  require "player"
  require "enemy"
  require "ball"
  require "collision"
  require "line"
  paddlesnd = love.audio.newSource("paddleBeep.wav", "static")
  b1 = Ball()
  line = Line()
  p1 = Player()
  enemy = Enemy()
  end

  function love.update(dt)
    
    if checkCollision(p1, b1) then
      
      love.audio.play(paddlesnd)
      b1.center = b1.y + b1.height / 2 
      b1.speedy = p1.center + math.random(-100,100)
      b1.x = b1.x + 10
        b1.speedx = -b1.speedx

  elseif checkCollision(enemy, b1) then
    love.audio.play(paddlesnd)
      enemy.center = enemy.y + enemy.height / 2
      b1.center = b1.y + b1.height / 2 
      b1.speedy = p1.center + math.random(-100,100)
      b1.speedx = -b1.speedx
      b1.x = b1.x - 10
    end
    
    p1:update(dt)
    enemy:update(dt, b1.y, b1.x)
    b1:update(dt)
  end

  function love.draw()
line:draw()
  b1:draw()
  p1:draw()
  enemy:draw()
  end