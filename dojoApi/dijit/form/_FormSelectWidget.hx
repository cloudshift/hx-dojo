package dijit.form;

extern class _FormSelectWidget extends dijit.form._FormValueWidget {
public function onFetch():Void;
public function getOptions(valueOrIdx:Dynamic):Dynamic;
public function addOption(option:Dynamic):Void;
public function removeOption(valueOrIdx:Dynamic):Void;
public function updateOption(newOption:Dynamic):Void;
public function setStore(store:Dynamic,?selectedValue:Dynamic,?fetchArgs:Dynamic):Dynamic;
public function onSetStore():Void;
public var multiple:Bool;
public var store:Dynamic;
public var query:Dynamic;
public var queryOptions:Dynamic;
public var sortByLabel:Bool;
public var loadChildrenOnOpen:Bool;
public function new(prms:Dynamic,?name:Dynamic):Void;

}
