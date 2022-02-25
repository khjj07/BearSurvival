local G={}
local box_node = require "defui.module.box_node"
local text_node = require "defui.module.text_node"
function G.init(self)
	self.node={}
	self.box_node={}
	self.text_node={}
	self.node["start_btn"]=box_node.create(gui.get_node("start_btn"),nil)
	self.node["start_text"]=text_node.create(gui.get_node("start_text"),self.node["start_btn"])
end
return G