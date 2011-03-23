package dojox.form;

extern class Manager extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function registerWidget(widget:Dynamic):Void;
public function unregisterWidget(name:String):Void;
public function registerWidgetDescendants(widget:Dynamic):Void;
public function unregisterWidgetDescendants(widget:Dynamic):Void;
public function formWidgetValue(elem:Dynamic,?value:Dynamic):Dynamic;
public function formPointValue(elem:Dynamic,?value:Dynamic):Dynamic;
public function inspectFormWidgets(inspector:Dynamic,?state:Dynamic,?defaultValue:Dynamic):Dynamic;
public function inspectAttachedPoints(inspector:Dynamic,?state:Dynamic,?defaultValue:Dynamic):Dynamic;
public function inspect(inspector:Dynamic,?state:Dynamic,?defaultValue:Dynamic):Dynamic;
public function registerNode(node:Dynamic):Void;
public function unregisterNode(name:String):Void;
public function registerNodeDescendants(node:Dynamic):Void;
public function unregisterNodeDescendants(node:Dynamic):Void;
public function formNodeValue(elem:Dynamic,?value:Dynamic):Dynamic;
public function inspectFormNodes(inspector:Dynamic,?state:Dynamic,?defaultValue:Dynamic):Dynamic;
public function onReset():Bool;
public function reset():Void;
public function onSubmit():Bool;
public function submit():Void;
public function isValid():Void;
public function elementValue(name:String,?value:Dynamic):Dynamic;
public function gatherFormValues(?names:Dynamic):Dynamic;
public function setFormValues(values:Dynamic):Void;
public function gatherEnableState(?names:Dynamic):Dynamic;
public function enable(?state:Dynamic,defaultState:Bool):Dynamic;
public function disable(?state:Dynamic):Dynamic;
public function gatherDisplayState(?names:Dynamic):Dynamic;
public function show(?state:Dynamic,?defaultState:Bool):Dynamic;
public function hide(?state:Dynamic):Dynamic;
public function gatherClassState(className:String,?names:Dynamic):Dynamic;
public function addClass(className:String,?names:Dynamic):Dynamic;
public function removeClass(className:String,?names:Dynamic):Dynamic;
public var watch:Dynamic;
public var formWidgets:Dynamic;
public var formNodes:Dynamic;
public var name:String;
public var action:String;
public var method:String;
public var encType:String;
// public var accept-charset:String;
public var accept:String;
public var target:String;
public var isForm:Bool;

}
