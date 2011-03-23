package dijit.form;

extern class ComboBoxMixin {
public function new():Void;
public function postMixInProperties():Void;
public function postCreate():Void;
public function uninitialize():Void;
public function doHighlight(label:String,find:String):Dynamic;
public function reset():Void;
public var item:Dynamic;
public var pageSize:Int;
public var store:Dynamic;
public var fetchProperties:Dynamic;
public var query:Dynamic;
public var autoComplete:Bool;
public var highlightMatch:String;
public var searchDelay:Int;
public var searchAttr:String;
public var labelAttr:String;
public var labelType:String;
public var queryExpr:String;
public var ignoreCase:Bool;
public var hasDownArrow:Bool;
public var templateString:Dynamic;
public var baseClass:String;
public var searchTimer:Dynamic;
public var value:String;
public var srcNodeRef:Dynamic;
public var comboNode:Dynamic;

}
