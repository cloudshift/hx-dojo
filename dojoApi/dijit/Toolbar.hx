package dijit;

extern class Toolbar extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function connectKeyNavHandlers(prevKeyCodes:Dynamic,nextKeyCodes:Dynamic):Void;
public function startupKeyNavChildren():Void;
public function addChild(widget:Dynamic,?insertIndex:Int):Void;
public function focus():Void;
public function focusFirstChild():Void;
public function focusNext():Void;
public function focusPrev():Void;
public function focusChild(widget:Dynamic,last:Bool):Void;
public function _onChildBlur(widget:Dynamic):Void;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var focusedChild:Dynamic;
public var tabIndex:Int;

}
