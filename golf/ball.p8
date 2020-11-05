ball = {
	x0=5,
	y0=5,
	x1=30,
	y1=30,
	mov=true,
	h=4
}

function update_ball()
	if(ball.mov == false) then return end
	local dx = (ball.x1 - ball.x0) / 3
	local dy = (ball.y1 - ball.y0) / 3
	ball.y0 += dy
	ball.x0 += dx 
	if(ball.x0 == ball.x1 and ball.y0 == ball.y1) then
		ball.mov = false
	end
end

function draw_ball() 
	spr(19,ball.x0,ball.y0+ball.h)
		spr(17,ball.x0,ball.y0)
end