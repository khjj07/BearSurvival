local G={}
local box_node = require "defui.module.box_node"
local text_node = require "defui.module.text_node"
function G.init(self)
	self.node={}
	self.box_node={}
	self.text_node={}
	self.node["new_game_btn"]=text_node.create(gui.get_node("new_game_btn"),nil)
	self.node["load_game_btn"]=text_node.create(gui.get_node("load_game_btn"),nil)
	self.node["credit_btn"]=text_node.create(gui.get_node("credit_btn"),nil)
	self.node["quit_btn"]=text_node.create(gui.get_node("quit_btn"),nil)
end
return G