local L={}

function L.update(self)
	local pos=go.get_position()
	pos.z=-pos.y/100000 
	go.set_position(pos)
end

return L

