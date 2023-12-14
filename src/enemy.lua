Enemy = Object:extend()

function Enemy:new()
  local windowHeight = love.graphics.getHeight()
  self.x = love.graphics.getWidth() - 20
  self.img = love.graphics.newImage("paddle.png")
  self.y = windowHeight / 2
  self.speed = windowHeight / 3
  self.width = 10
  self.height = 100

end

function Enemy:update(dt, bally, ballx)
  local ballDirection = checkBallDirection(bally, ballx)

  if ballDirection == 5 and bally -50 > self.y then
    self.y = self.y + self.speed * dt
  elseif ballDirection == 10 and bally -50 < self.y then
    self.y = self.y - self.speed * dt
  elseif ballDirection == 1 then
    
  end
end
local lasty = 0
function checkBallDirection(bally, ballx)
if bally > lasty then
  lasty = bally
  return 5
  end
if bally < lasty then
  lasty = bally
  return 10
else 
  lasty = bally
  return 1
end
end

function Enemy:draw()
  local windowWidth = love.graphics.getWidth() - 20
  love.graphics.draw(self.img, self.x, self.y)
end
