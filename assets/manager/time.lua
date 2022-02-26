local T={}

local defrx=require "defrx.defrx"
function T.init(self)
	self.day = defrx.create_reactive_property(1, "next_day")
	self.hour = defrx.create_reactive_property(0, "minute_passed")
	self.world_timer=timer.delay(0.125, true, function()
		self.hour:set(self.hour.value+1/60)
	end)
	
	defrx.observe(self, "minute_passed", function(self, message_id, message,sender)
		if 0 == message.value%12 then
			defrx.notify("day_switch")
		end
		if 0 == message.value%24 then
			self.day:set(self.day.value+1)
		end
	end)
end

function T.on_message(self, message_id, message,sender)
	defrx.on_message(self, message_id, message, sender)
end

return T