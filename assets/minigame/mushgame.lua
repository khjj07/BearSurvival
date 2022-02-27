local G={}
local box_node = require "defui.module.box_node"
local text_node = require "defui.module.text_node"
function G.init(self)
	self.node={}
	self.box_node={}
	self.text_node={}
	self.node["box"]=box_node.create(gui.get_node("box"),nil)
	self.node["text"]=text_node.create(gui.get_node("text"),self.node["box"])
	self.node["mushroom2"]=box_node.create(gui.get_node("mushroom2"),nil)
	self.node["num2"]=text_node.create(gui.get_node("num2"),self.node["mushroom2"])
	self.node["mushroom3"]=box_node.create(gui.get_node("mushroom3"),nil)
	self.node["num3"]=text_node.create(gui.get_node("num3"),self.node["mushroom3"])
	self.node["mushroom4"]=box_node.create(gui.get_node("mushroom4"),nil)
	self.node["num4"]=text_node.create(gui.get_node("num4"),self.node["mushroom4"])
	self.node["mushroom5"]=box_node.create(gui.get_node("mushroom5"),nil)
	self.node["num5"]=text_node.create(gui.get_node("num5"),self.node["mushroom5"])
	self.node["mushroom1"]=box_node.create(gui.get_node("mushroom1"),nil)
	self.node["num1"]=text_node.create(gui.get_node("num1"),self.node["mushroom1"])
end
return G