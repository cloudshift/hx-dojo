package dojox.widget;

extern class FeedPortlet extends dojox.widget.Portlet {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function onFeedError():Void;
public function load():Void;
public function generateResults(items:Dynamic):Void;
public var local:Bool;
public var maxResults:Float;
public var url:String;
public var openNew:Bool;
public var showFeedTitle:Dynamic;
public var store:Dynamic;

}
