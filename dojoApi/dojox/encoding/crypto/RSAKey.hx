package dojox.encoding.crypto;

extern class RSAKey {
public function decrypt(ctext:String):Void;
public function new(rngf:Dynamic):Void;
public function setPublic(N:Dynamic,E:Dynamic):Void;
public function encrypt(text:Dynamic):Void;
public var n:Dynamic;
public var e:Float;
public var rngf:Dynamic;
public var d:Dynamic;
public var p:Dynamic;
public var q:Dynamic;
public var dmp1:Dynamic;
public var dmq1:Dynamic;
public var coeff:Dynamic;

}
