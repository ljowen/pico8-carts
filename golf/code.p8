//__lua__

dangle = 1/12
dpow = 20
anim_scale = 3
ymax=120
xmax=120

function _init()
 t=0
 plspr={4,6,8,10,12}
 aim={angle=0,pow=50}
 pl={x=20,y=20,sw=false,spridx=1} 
end

function _update()
 local	angle0=aim.angle
 local	pow0=aim.pow
	if(btnp(0) == true) then 
		aim.angle += dangle
	elseif(btnp(1) == true) then
		aim.angle -= dangle
	elseif(btnp(2)) then
		aim.pow += dpow
	elseif(btnp(3)) then
	 aim.pow -= dpow
	end
	if(btnp(4)) then
		swing()
	elseif(btnp(5)) then
		if(dangle == 1/100) then dangle = 1/10
		else dangle = 1/100
		end	
	end
	update_ball()
	
end

function draw_pl()	
	if(pl.sw==false) then
		pl.spridx=1
	elseif(t%anim_scale==0) then
			pl.spridx+=1
			if(pl.spridx>#plspr) then
				pl.spridx=1
				pl.sw = false
				pl.x = ball.x0
				pl.y = ball.y0
			end
	end
	spr(plspr[pl.spridx],pl.x,pl.y,2,2)
end

function _draw()
	cls()
	map()
 spridx = 1//t % #plspr + 1
// printh(spridx)
	spr(2,14*8,5*8,1,2)
	t = t+1	
	draw_pl()
	draw_aim()
	draw_ball()
end


function swing()
 x0 = pl.x+8
 y0 = pl.y+15
 x1,y1 = get_aim_end(x0,y0)
 pl.sw = true
 printh(pl.sw)
 printh(pl.spridx)
 ball.mov = true
 ball.x1 = x1
 ball.y1 = y1
end

