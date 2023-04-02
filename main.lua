  function love.load()
  Object = require "classic"
  require "player"
  require "enemy"
  require "ball"
  b1 = Ball()
  p1 = Player()
  enemy = Enemy()
  end
function checkCollision(a, b)
    --With locals it's common usage to use underscores instead of camelCasing
    local a_left = a.x
    local a_right = a.x + a.width
    local a_top = a.y
    local a_bottom = a.y + a.height

    local b_left = b.x
    local b_right = b.x + b.width
    local b_top = b.y
    local b_bottom = b.y + b.height

    --Directly return this boolean value without using if-statement
    return  a_right > b_left
        and a_left < b_right
        and a_bottom > b_top
        and a_top < b_bottom
end
  function love.update(dt)
    if checkCollision(p1, b1) then
        b1.speed = -b1.speed
      elseif checkCollision(enemy, b1) then
      b1.speed = -b1.speed
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