local G={}
local box_node = require "defui.module.box_node"
local text_node = require "defui.module.text_node"
function G.init(self)
	self.node={}
	self.box_node={}
	self.text_node={}
	self.node["new_game"]=box_node.create(gui.get_node("new_game"),nil)
	self.node["new_game_btn"]=text_node.create(gui.get_node("new_game_btn"),self.node["new_game"])
	self.node["credit"]=box_node.create(gui.get_node("credit"),nil)
	self.node["credit_btn"]=text_node.create(gui.get_node("credit_btn"),self.node["credit"])
	self.node["quit"]=box_node.create(gui.get_node("quit"),nil)
	self.node["quit_btn"]=text_node.create(gui.get_node("quit_btn"),self.node["quit"])
	self.node["start_bg"]=box_node.create(gui.get_node("start_bg"),nil)
end
return G