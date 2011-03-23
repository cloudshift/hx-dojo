package dojox.math.random;

extern class Secure {
public function new(prng:Dynamic,?noEvents:Bool):Void;
public function destroy():Void;
public function nextBytes(byteArray:Array<Dynamic>):Void;
public function seedTime():Void;
public var state:Dynamic;
public var pool:Dynamic;
public var pptr:Float;
public var prng:Dynamic;
public var h:Array<Dynamic>;

}
