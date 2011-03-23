package dojox.mobile.app;

extern class ImageThumbView extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function addThumb(item:Dynamic,url:Dynamic,index:Dynamic):Void;
public function handleImgLoad(event:Dynamic):Void;
public function onSelect(item:Dynamic,index:Dynamic,items:Dynamic):Void;
public function resize():Void;
public function render():Void;
public function calcPadding():Void;
public function place(node:Dynamic,x:Dynamic,y:Dynamic):Void;
public var items:Array<Dynamic>;
public var urlParam:String;
public var itemTemplate:String;
public var minPadding:Float;
public var maxPerRow:Dynamic;
public var selectedIndex:Float;
public var cache:Array<Dynamic>;
public var visibleImages:Array<Dynamic>;
public var thumbNodes:Dynamic;
public var padding:Float;

}
