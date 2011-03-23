package dojox.mdnd;

extern class AutoScroll {
public function new():Void;
public function init():Void;
public function getViewport():Void;
public function setAutoScrollNode(node:Dynamic):Void;
public function setAutoScrollMaxPage():Void;
public function checkAutoScroll(e:Dynamic):Void;
public function _autoScrollDown():Void;
public function _autoScrollUp():Void;
public function _autoScrollRight():Void;
public function _autoScrollLeft(e:Dynamic):Void;
public function stopAutoScroll():Void;
public function destroy():Void;
public var interval:Int;
public var recursiveTimer:Int;
public var marginMouse:Int;
public var resizeHandler:Dynamic;

}
