local G={}
local box_node = require "defui.module.box_node"
local text_node = require "defui.module.text_node"
function G.init(self)
	self.node={}
	self.box_node={}
	self.text_node={}
	self.node["clock"]=box_node.create(gui.get_node("clock"),nil)
	self.node["needle"]=box_node.create(gui.get_node("needle"),self.node["clock"])
	self.node["hp"]=box_node.create(gui.get_node("hp"),nil)
	self.node["hp_stencil"]=box_node.create(gui.get_node("hp_stencil"),self.node["hp"])
	self.node["pie"]=box_node.create(gui.get_node("pie"),self.node["hp_stencil"])
	self.node["pie1"]=box_node.create(gui.get_node("pie1"),self.node["pie"])
	self.node["pie2"]=box_node.create(gui.get_node("pie2"),self.node["pie1"])
	self.node["pie3"]=box_node.create(gui.get_node("pie3"),self.node["pie2"])
	self.node["hungry"]=box_node.create(gui.get_node("hungry"),nil)
	self.node["hungry_stencil"]=box_node.create(gui.get_node("hungry_stencil"),self.node["hungry"])
	self.node["box4"]=box_node.create(gui.get_node("box4"),self.node["hungry_stencil"])
	self.node["pie7"]=box_node.create(gui.get_node("pie7"),self.node["box4"])
	self.node["pie8"]=box_node.create(gui.get_node("pie8"),self.node["pie7"])
	self.node["box3"]=box_node.create(gui.get_node("box3"),self.node["pie8"])
	self.node["pie4"]=box_node.create(gui.get_node("pie4"),self.node["box3"])
	self.node["pie5"]=box_node.create(gui.get_node("pie5"),self.node["pie4"])
	self.node["pie6"]=box_node.create(gui.get_node("pie6"),self.node["pie5"])
end
return G