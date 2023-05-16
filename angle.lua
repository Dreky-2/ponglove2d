
function anglecalc(paddle,ball)

  local dy = paddle.center - ball.center
  if dy < 0 then

    angle = dy / paddle.height * 180 - 60

  elseif dy > 0 then
    angle = dy / paddle.height * 180 + 60

    end
    return angle
end