package dojox.mdnd;

extern class PureSource extends dojo.dnd.Selector {
public function new(node:Dynamic,?params:Dynamic):Void;
public function onDndCancel():Void;
public function copyState(keyPressed:Bool):Bool;
public function _markDndStatus(copy:Bool):Void;
public function _legalMouseDown(e:Dynamic):Bool;
public var horizontal:Bool;
public var copyOnly:Dynamic;
public var withHandles:Bool;
public var isSource:Dynamic;
public var targetState:String;
public var generateText:Dynamic;
public var isDragging:Bool;
public var mouseDown:Bool;
public var targetAnchor:Dynamic;
public var mouseButton:Dynamic;
public var accept:Dynamic;
public var sourceState:String;
public var topics:Array<Dynamic>;

}
