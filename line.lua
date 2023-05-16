Line = Object:extend()
function Line:new()
  self.img = love.graphics.newImage("line.png")
  self.imgHeight = 96
end
function Line:update()

end

function Line:draw()
  local windowHeight = love.graphics.getHeight()
  local windowWidth = love.graphics.getWidth()
  local FitsAmount = windowHeight/self.imgHeight

  
  for i = FitsAmount,-1,-1 do
    local temp = i*self.imgHeight
    love.graphics.draw(self.img, windowWidth/2 - 10, 0 + self.imgHeight * i)
   
    end
  
  
end