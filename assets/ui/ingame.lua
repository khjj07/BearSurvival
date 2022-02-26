local G={}
local box_node = require "defui.module.box_node"
local text_node = require "defui.module.text_node"
function G.init(self)
	self.node={}
	self.box_node={}
	self.text_node={}
	self.node["clock"]=box_node.create(gui.get_node("clock"),nil)
	self.node["needle"]=box_node.create(gui.get_node("needle"),self.node["clock"])
	self.node["hp_icon"]=box_node.create(gui.get_node("hp_icon"),nil)
	self.node["hp_stencil"]=box_node.create(gui.get_node("hp_stencil"),self.node["hp_icon"])
	self.node["pie"]=box_node.create(gui.get_node("pie"),self.node["hp_stencil"])
	self.node["pie1"]=box_node.create(gui.get_node("pie1"),self.node["pie"])
	self.node["pie2"]=box_node.create(gui.get_node("pie2"),self.node["pie1"])
	self.node["pie3"]=box_node.create(gui.get_node("pie3"),self.node["pie2"])
	self.node["hp"]=text_node.create(gui.get_node("hp"),self.node["hp_icon"])
	self.node["hungry_icon"]=box_node.create(gui.get_node("hungry_icon"),nil)
	self.node["hungry_stencil"]=box_node.create(gui.get_node("hungry_stencil"),self.node["hungry_icon"])
	self.node["box4"]=box_node.create(gui.get_node("box4"),self.node["hungry_stencil"])
	self.node["pie7"]=box_node.create(gui.get_node("pie7"),self.node["box4"])
	self.node["pie8"]=box_node.create(gui.get_node("pie8"),self.node["pie7"])
	self.node["box3"]=box_node.create(gui.get_node("box3"),self.node["pie8"])
	self.node["pie4"]=box_node.create(gui.get_node("pie4"),self.node["box3"])
	self.node["pie5"]=box_node.create(gui.get_node("pie5"),self.node["pie4"])
	self.node["pie6"]=box_node.create(gui.get_node("pie6"),self.node["pie5"])
	self.node["hungry"]=text_node.create(gui.get_node("hungry"),self.node["hungry_icon"])
	self.node["day"]=text_node.create(gui.get_node("day"),nil)
	self.node["celcius"]=box_node.create(gui.get_node("celcius"),nil)
	self.node["temperature_bar"]=box_node.create(gui.get_node("temperature_bar"),self.node["celcius"])
	self.node["temperature"]=text_node.create(gui.get_node("temperature"),self.node["celcius"])
	self.node["box"]=box_node.create(gui.get_node("box"),nil)
	self.node["fade"]=box_node.create(gui.get_node("fade"),nil)
end
return G