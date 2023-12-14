Ball = Object:extend()

function Ball:new()
    local windowHeight = love.graphics.getHeight()
    local windowWidth = love.graphics.getWidth()
    self.scoreG = love.audio.newSource("scored.wav", "static")
    self.scoreB =  love.audio.newSource("scoredOn.wav", "static")
    self.img = love.graphics.newImage("ball.png")
  self.y = windowHeight / 2
  self.score = 0
  self.scoreE = 0
  self.x = windowWidth / 12
  self.speedx = windowWidth / 6
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
    self.y = windowHeight / 2
    self.score = self.score + 1
    love.audio.play(self.scoreB)
    self.speedx = -self.speedx
  elseif self.x > windowWidth then
    self.x = windowWidth / 2
    self.y = windowHeight / 2
    love.audio.play(self.scoreG)
    self.scoreE = self.scoreE + 1
    self.speedx = -self.speedx
  end
    if self.y < 0 then
    
    self.speedy = -self.speedy
  elseif self.y > windowHeight then
    
    self.speedy = -self.speedy
  end
end

function Ball:draw() 
  local windowHeight = love.graphics.getHeight()
 
    local windowWidth = love.graphics.getWidth()
love.graphics.draw(self.img, self.x, self.y)
 love.graphics.print(self.scoreE, windowWidth/2 - 200 , windowHeight/16 )
    love.graphics.print(self.score, windowWidth/2 + 200, windowHeight/16 )

  end