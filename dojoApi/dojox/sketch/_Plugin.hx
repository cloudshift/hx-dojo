package dojox.sketch;

extern class _Plugin {
public function new(?args:Dynamic):Void;
public function attr(name:Dynamic,value:Dynamic):Void;
public function onActivate():Void;
public function activate(e:Dynamic):Void;
public function onMouseDown(e:Dynamic):Void;
public function onMouseMove(e:Dynamic):Void;
public function onMouseUp(e:Dynamic):Void;
public function destroy(f:Dynamic):Void;
public function connect(o:Dynamic,f:Dynamic,tf:Dynamic):Void;
public function setFigure(figure:Dynamic):Void;
public function setToolbar(toolbar:Dynamic):Void;
public var figure:Dynamic;
public var iconClassPrefix:String;
public var itemGroup:String;
public var button:Dynamic;
public var queryCommand:Dynamic;
public var shape:String;
public var useDefaultCommand:Dynamic;
public var buttonClass:Dynamic;

}
