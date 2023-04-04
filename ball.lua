Ball = Object:extend()

function Ball:new()
    local windowHeight = love.graphics.getHeight()
    local windowWidth = love.graphics.getWidth()
  self.y = windowHeight / 2

  self.x = windowWidth / 2
  self.speedx = 200
  self.speedy = 0
    self.width = 10
  self.height = 10
self.center = self.y 
end

function Ball:update(dt)
local windowHeight = love.graphics.getHeight()
  local windowWidth = love.graphics.getWidth()
  self.x = self.x + self.speedx * dt

  self.y = self.y + self.speedy * dt

  if self.x < 0 then
    self.x = windowWidth / 2
    self.speedx = -self.speedx
  elseif self.x > windowWidth then
    self.x = windowWidth / 2
    self.speedx = -self.speedx
  end
    if self.y < 0 then
    
    self.speedy = -self.speedy
  elseif self.y > windowHeight then
    
    self.speedy = -self.speedy
  end
end

function Ball:draw()  
    love.graphics.circle("fill", self.x, self.y, self.width, self.height)
  end