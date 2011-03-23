package dijit.tree;

extern class dndSource extends dijit.tree._dndSelector {
public function checkAcceptance(source:Dynamic,nodes:Dynamic):Bool;
public function copyState(keyPressed:Bool):Bool;
public function checkItemAcceptance(target:Dynamic,source:Dynamic,position:String):Void;
public function itemCreator(nodes:Dynamic,target:Dynamic,source:Dynamic):Void;
public function onDndDrop(source:Dynamic,nodes:Dynamic,copy:Bool):Void;
public var accept:Array<String>;
public var dragThreshold:Float;
public var betweenThreshold:Int;
public var targetAnchor:Dynamic;
public var dropPosition:String;
public var targetBox:Dynamic;
public var mouseDown:Bool;
public var mouseButton:Dynamic;
public var isDragging:Bool;
public var sourceState:String;
public var targetState:String;
public var topics:Array<Dynamic>;
public function new(prms:Dynamic,?name:Dynamic):Void;

}
