package dojox.dnd;

extern class BoundingBoxController {
public function new(sources:Array<Dynamic>,domNode:Dynamic):Void;
public function destroy():Void;
public function boundingBoxIsViable():Void;
public var domNode:Dynamic;
public var events:Array<Dynamic>;
public var subscriptions:Array<Dynamic>;

}
