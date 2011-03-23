package dijit.layout;

extern class SplitContainer {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function beginSizing(e:Dynamic,i:Dynamic):Void;
public function changeSizing(e:Dynamic):Void;
public function endSizing(e:Dynamic):Void;
public function movePoint():Void;
public function legaliseSplitPoint(a:Dynamic):Void;
public var activeSizing:Bool;
public var sizerWidth:Int;
public var orientation:String;
public var persist:Bool;
public var isHorizontal:Bool;
public var sizers:Array<Dynamic>;
public var virtualSizer:Dynamic;
public var paneWidth:Dynamic;
public var paneHeight:Dynamic;
public var isSizing:Bool;
public var sizingSplitter:Dynamic;
public var cover:Dynamic;
public var originPos:Dynamic;
public var startPoint:Dynamic;
public var lastPoint:String;
public var screenToClientOffset:Float;
public var dragOffset:Float;
public var isDraggingLeft:Bool;

}
