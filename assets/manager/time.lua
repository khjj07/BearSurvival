local T={}

local defrx=require "defrx.defrx"
function T.init(self)
	self.day = defrx.create_reactive_property(1, "day")
	self.hour = defrx.create_reactive_property(0, "minute")
	self.night_checker=false
	self.world_timer=timer.delay(0.125, true, function()
		self.hour:set(self.hour.value+1/60)
	end)
	
	defrx.observe(self, "minute", function(self, message_id, message,sender)
		if message.value>=24 and self.night_checker then
			self.day:set(self.day.value+1)
			self.hour.value=0
			self.night_checker=false
			defrx.notify("daylight",{value=true})
		elseif message.value>=12 and not self.night_checker then
			self.night_checker=true
			defrx.notify("daylight",{value=false})
		end
	end)
end

function T.on_message(self, message_id, message,sender)
	defrx.on_message(self, message_id, message, sender)
end

return T