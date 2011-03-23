package dijit._editor.plugins;

extern class LinkDialog extends dijit._editor._Plugin {
public function _isValid():Void;
public function _checkValues(args:Dynamic):Void;
public function _getCurrentValues(a:Dynamic):Dynamic;
public var urlRegExp:String;
public var emailRegExp:String;
public var htmlTemplate:String;
public var tag:String;
public var linkDialogTemplate:String;
public var dropDown:Dynamic;

}
