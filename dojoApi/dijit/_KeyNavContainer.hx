package dijit;

extern class _KeyNavContainer extends dijit._Container {
public function connectKeyNavHandlers(prevKeyCodes:Dynamic,nextKeyCodes:Dynamic):Void;
public function startupKeyNavChildren():Void;
public function focus():Void;
public function focusFirstChild():Void;
public function focusNext():Void;
public function focusPrev():Void;
public function focusChild(widget:Dynamic,last:Bool):Void;
public function _onChildBlur(widget:Dynamic):Void;
public var focusedChild:Dynamic;
public var tabIndex:Int;
public function new(prms:Dynamic,?name:Dynamic):Void;

}
