package dojox.form;

extern class _FormSelectWidget extends dijit.form._FormValueWidget {
public function getOptions(valueOrIdx:Dynamic):Dynamic;
public function addOption(option:Dynamic):Void;
public function removeOption(valueOrIdx:Dynamic):Void;
public function updateOption(newOption:Dynamic):Void;
public var multiple:Bool;
public var options:Dynamic;

}
