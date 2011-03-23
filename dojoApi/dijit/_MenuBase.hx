package dijit;

extern class _MenuBase extends dijit._Widget {
public function constructor():Void;
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
public function onExecute():Void;
public function onCancel(closeAll:Bool):Void;
public function onItemHover(item:Dynamic):Void;
public function onItemUnhover(item:Dynamic):Void;
public function _openPopup():Dynamic;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var focusedChild:Dynamic;
public var tabIndex:Int;
public var parentMenu:Dynamic;
public var popupDelay:Int;
public var hover_timer:Dynamic;
public var isActive:Bool;
public var isShowingNow:Bool;
public function new(prms:Dynamic,?name:Dynamic):Void;

}
