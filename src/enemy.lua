Enemy = Object:extend()

function Enemy:new()
    local windowHeight = love.graphics.getHeight()
    self.x = love.graphics.getWidth() - 20
      self.img = love.graphics.newImage("paddle.png")
  self.y = windowHeight / 2
  self.speed = windowHeight / 6 
  self.yspeed = 100
    self.width = 10
  self.height = 100
self.center = self.y + self.height / 2
end

function Enemy:update(dt, bally)
  if bally - 25 > self.y then
    self.y = self.y + self.speed * dt
  elseif bally - 25< self.y then
    self.y = self.y - self.speed * dt
    end
end

function Enemy:draw()
  local windowWidth = love.graphics.getWidth() - 20

    love.graphics.draw(self.img,self.x, self.y)
  end