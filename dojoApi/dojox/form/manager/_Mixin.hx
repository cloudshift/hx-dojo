package dojox.form.manager;

extern class _Mixin {
public function startup():Void;
public function destroy():Void;
public function registerWidget(widget:Dynamic):Void;
public function unregisterWidget(name:String):Void;
public function registerWidgetDescendants(widget:Dynamic):Void;
public function unregisterWidgetDescendants(widget:Dynamic):Void;
public function formWidgetValue(elem:Dynamic,?value:Dynamic):Dynamic;
public function formPointValue(elem:Dynamic,?value:Dynamic):Dynamic;
public function inspectFormWidgets(inspector:Dynamic,?state:Dynamic,?defaultValue:Dynamic):Dynamic;
public function inspectAttachedPoints(inspector:Dynamic,?state:Dynamic,?defaultValue:Dynamic):Dynamic;
public function inspect(inspector:Dynamic,?state:Dynamic,?defaultValue:Dynamic):Dynamic;
public var watch:Dynamic;
public var formWidgets:Dynamic;
public var formNodes:Dynamic;

}
