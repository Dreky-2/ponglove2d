Enemy = Object:extend()

function Enemy:new()
    local windowHeight = love.graphics.getHeight()
    self.x = love.graphics.getWidth() - 20
  self.y = windowHeight / 2
  self.speed = windowHeight / 2 
  self.yspeed = 50
    self.width = 10
  self.height = 50
    self.originy = self.height / 2
  self.originx = self.width / 2
end

function Enemy:update(dt, bally)
  if bally > self.y then
    self.y = self.y + self.yspeed * dt
  elseif bally < self.y then
    self.y = self.y - self.yspeed * dt
    end
end

function Enemy:draw()
  local windowWidth = love.graphics.getWidth() - 20
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
  end