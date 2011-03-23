package dojox.analytics;

extern class Urchin {
public function new(args:Dynamic):Void;
public function GAonLoad():Void;
public function trackPageView(url:String):Void;
public var acct:String;
public var tracker:Dynamic;

}
