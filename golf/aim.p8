function draw_aim() 
 x0 = pl.x+8
 y0 = pl.y+15
 x1,y1 = get_aim_end(x0,y0)
 if(x1 > xmax) then x1 = xmax end
 if(y1 > ymax) then y1 = ymax end
	line(
		x0,
		y0,
		x1,
		y1,
		10
	)
end

function get_aim_end(x0,y0)
	return x0+aim.pow*cos(aim.angle),
		y0+aim.pow*sin(aim.angle)
end