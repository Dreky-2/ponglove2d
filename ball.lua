Ball = Object:extend()

function Ball:new()
    local windowHeight = love.graphics.getHeight()
    local windowWidth = love.graphics.getWidth()
  self.y = windowHeight / 16
  self.x = windowWidth / 2
  self.speed = 100
    self.width = 10
  self.height = 10
    self.originy = self.height / 2
  self.originx = self.width / 2
end

function Ball:update(dt)
  local windowWidth = love.graphics.getWidth()
  self.x = self.x + self.speed * dt
  if self.x < 0 then
    self.x = windowWidth / 2
    self.speed = -self.speed
  elseif self.x > windowWidth then
    self.x = windowWidth / 2
    self.speed = -self.speed
    end
end

function Ball:draw()  
    love.graphics.circle("fill", self.x, self.y, self.width, self.height)
  end