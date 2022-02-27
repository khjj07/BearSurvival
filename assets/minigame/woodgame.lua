local G={}
local box_node = require "defui.module.box_node"
local text_node = require "defui.module.text_node"
function G.init(self)
	self.node={}
	self.box_node={}
	self.text_node={}
	self.node["tree"]=box_node.create(gui.get_node("tree"),nil)
	self.node["hand"]=box_node.create(gui.get_node("hand"),nil)
end
return G