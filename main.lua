function love.load()
  Object = require "classic"
  require "player"
  require "enemy"
  require "ball"
  require "collision"
  require "angle"
  b1 = Ball()
  p1 = Player()
  enemy = Enemy()
  end

  function love.update(dt)
    
    if checkCollision(p1, b1) then
      
      
      p1.center = p1.y + p1.height / 2
      b1.center = b1.y + b1.height / 2
      local temp = anglecalc(p1,b1)
      b1.speedy = temp
      
        b1.speedx = -b1.speedx

  elseif checkCollision(enemy, b1) then
    
      enemy.center = enemy.y + enemy.height / 2
      b1.center = b1.y + b1.height / 2
      local temp = anglecalc(p1,b1)
      b1.speedy = temp
      b1.speedx = -b1.speedx
      
    end
    
    p1:update(dt)
    enemy:update(dt, b1.y)
    b1:update(dt)
  end

  function love.draw()
  b1:draw()
  p1:draw()
  enemy:draw()
  end