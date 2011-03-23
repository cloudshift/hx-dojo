package dojox.form.manager;

extern class _NodeMixin {
public function destroy():Void;
public function registerNode(node:Dynamic):Void;
public function unregisterNode(name:String):Void;
public function registerNodeDescendants(node:Dynamic):Void;
public function unregisterNodeDescendants(node:Dynamic):Void;
public function formNodeValue(elem:Dynamic,?value:Dynamic):Dynamic;
public function inspectFormNodes(inspector:Dynamic,?state:Dynamic,?defaultValue:Dynamic):Dynamic;
public var formNodes:Dynamic;

}
