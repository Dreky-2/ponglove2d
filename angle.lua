
function anglecalc(paddle,ball)
    print("calculation",paddle.center,ball.center)
    local dy = paddle.center - ball.center
    if dy > 0 then
  
      angle = dy / paddle.height * 180
  
    elseif dy < 0 then
      angle = dy / paddle.height * 180
  
      end
      return angle
  end