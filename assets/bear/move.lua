local M={}

function M.init(self)
	self.vel=vmath.vector3()
end

function M.update(self,dt)
	if self.max_speed<=vmath.length(self.vel) and vmath.length(self.vel)>0 then
		self.vel=vmath.normalize(self.vel)*self.max_speed
	end
	local pos = go.get_position()+self.vel*dt
	go.set_position(pos)
	self.vel=self.vel-self.vel*self.friction
end

function M.on_input(self,action_id,action)
	if action_id==hash("left") then
		self.vel.x=self.vel.x-self.accel
	end
	if action_id==hash("right") then
		self.vel.x=self.vel.x+self.accel
	end
	if action_id==hash("up") then
		self.vel.y=self.vel.y+self.accel
	end
	if action_id==hash("down") then
		self.vel.y=self.vel.y-self.accel
	end
end


return M