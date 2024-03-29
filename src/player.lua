Player = Object:extend()

function Player:new()
  local windowHeight = love.graphics.getHeight()
  self.img = love.graphics.newImage("paddle.png")
  self.x = 10
  self.y = windowHeight / 2
  self.speed = windowHeight / 2 
  self.width = 10
  self.height = 100
self.center = self.y + self.height / 2
end

function Player:update(dt)

  local windowHeight = love.graphics.getHeight()
if  love.keyboard.isDown("w","up","a", "left")then
 
  self.y = self.y - self.speed * dt
elseif love.keyboard.isDown("s","d","right", "down") then
  
  self.y = self.y + self.speed * dt
  
end
if self.y > windowHeight - 50 then
  self.y = self.y - self.speed * dt
elseif self.y < 0 then
  self.y = self.y + self.speed * dt

  end
end

function Player:draw()
    love.graphics.draw(self.img,self.x, self.y)
end
