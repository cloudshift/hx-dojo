
import bdog.JSON;
import bdog.Os;
using Lambda;
using StringTools;

typedef Base = {
  var name:String;
  var location:String;
  var scope:String;
  var priv:Bool; // place holder use private
  var type:String;
  var classlike:Bool;
  var superclass:String;
  var summary:String;
  var description:String;
  var resources:Array<String>;
  var provides:Array<String>;
}

typedef Property = Base;

typedef Param = {
  var name:String;
  var type:String;
  var usage:String;
}

typedef Method = { > Base,
  var parameters:Array<Param>;
  var returnTypes:Array<{type:String}>; // use Reflect.field return-types
}

class Create {

  static var api:Dynamic;
  static var fo:js.io.FileOutput;
  static var all:js.io.FileOutput;
  static var apiDir = "dojoApi";
  static var curNS:String;
  static var METHODS = "methods";
  static var PROPS = "properties";
  static var PROVIDES = "provides";
  
  static var keywords = [ "class", "callback"] ;

  // top are treated separately
  static var namespaces = ["dojo.data",
                           "dojo.dnd",
                           "dojo.fx",
                           "dojo.rpc",
                           "dijit",
                           "dijit.form",
                           "dijit._editor",
                           "dijit._editor.plugins",
                           "dijit.layout",
                           "dijit.tree",
                           "dojox.charting",
                           "dojox.charting.widget",
                           "dojox.data",
                           "dojox.drawing",
                           "dojox.grid",
                           "dojox.analytics",
                           "dojox.atom",
                           "dojox.av",
                           "dojox.av.widget",
                           "dojox.date",
                           "dojox.dtl",
                           "dojox.editor",
                           "dojox.embed",
                           "dojox.form",
                           "dojox.form.manager",
                           "dojox.fx",
                           "dojox.gfx",
                           "dojox.grid",
                           "dojox.image",
                           "dojox.layout",
                           "dojox.rpc",
                           "dojox.sketch",
                           "dojox.storage",
                           "dojox.testing",
                           "dojox.timing",
                           "dojox.widget",
                           "dojox.wire",
                           "dojox.wire.ml",
                           "dojox.xml",
                           "dojox.xmpp",
                           ];
  
  // these are props which seem to be repeated in class/subclass so
  // i've just remove them for now
  static var prop_blacklist = ["regExpGen","serialize","skipForm","compare"];
 
  static var class_blacklist = [
                                "dojo.data.util.simpleFetch",
                                "dijit.layout._LayoutWidget",
                                "dojox.dtl.Context",
                                "dojox.dtl.DomInline",
                                "dojox.dtl.Inline",
                                "dojox.mobile.app.AlertDialog",
                                "dojox.mobile.app._FormValueWidget",
                                "Container"
                          ];

  // these should be in the provides api but aren't, so they're added
  // manaually ...
  
  static var missingDojo = ["dojo.NodeList","dojo.Deferred"];
  
  static var missingDojoX = [
                             "dojox.widget._CalendarBase",
                             "dojox.widget.gauge.AnalogLineIndicator",
                             "dojox.data.GoogleSearchStore",
                             "dojox.widget.gauge._Indicator",
                             "dojox.widget.gauge.BarLineIndicator",
                             "dojox.wire.ml.Action",
                             "dojox.wire.ml.RestHandler",
                             "dojox.wire.ml.ChildWire",
                             "dojox.form._BusyButtonMixin",
                             "dojox.widget._CalendarDay",
                             "dojox.widget._CalendarMonthYear",
                             "dojox.gfx.Surface",
                             "dojox.mobile.View"
                            
                             ];

  static var missingDijit = ["dijit._MenuBase",
                             "dijit._Widget",
                             "dijit._MenuBarItemMixin",
                             "dijit.form.ComboBoxMixin",
                             "dijit.form.NumberTextBoxMixin",
                             "dijit.layout._Splitter",
                             "dijit.form._FormValueWidget"
                             ];

  static var classLike = ["dojo.Deferred"];
  static var typedefLike = ["dojo.NodeList"];

  static function
  toProper(s:String):String {
    return s.charAt(0).toUpperCase() + s.substr(1);
  }
  
  static function
  getNamespaces() {
    return Reflect.fields(api).filter(function(ns) {
      var p = ns.split("."),
        lastEl = p[p.length-1],
        firstChar = lastEl.charAt(0);
      
      return (firstChar != "_" && firstChar == firstChar.toLowerCase()) ;
    });
  }
  
  static function
  keyword(p:String) {
    return keywords.exists(function(kw) { return kw == p; });
  }

  static function
  treatAsClass(name:String) {
    return classLike.exists(function(el) { return el == name; });
  }

  static function
  treatAsTypedef(name:String) {
    return typedefLike.exists(function(el) { return el == name; });
  }

  static function
  blacklisted(name:String) {
    return class_blacklist.exists(function(b) {return b == name ; });
  }

  static function
  commentIllegalName(name:String) {
    if (name.indexOf("-") != -1 || keyword(name))
      write("// ");
  }

  static inline function
  write(s:String) {
    fo.writeString(s);
  }
  
  static function
  addMissing(n:String) {
    var ns = Reflect.field(api,n),
      provides = Reflect.field(ns,PROVIDES),
      missing = switch(n) {
       case "dojox":
          missingDojoX;
       case "dojo":
          missingDojo;
       case "dijit":
          missingDijit;
      };

    if (missing != null && provides != null && missing.length > 0) {
      missing.iter(function(m) {
          provides.push(m);
        });
    }
  }

  static inline function
  to(p:String) {
    return apiDir + "/"+p;
  }
  
  public static function
  main() {

    Os.mkdir(apiDir);
    
    all = js.io.File.write("All.hx",false);
    api = JSON.decode(js.io.File.getContent("api.json"));

    //  var names = getNamespaces();
    var names = ["dojo","dijit","dojox"];
    names.iter(function(el) {
        Os.mkdir(to(el.replace(".","/")));
      });

    for (ns in names) {
      Os.println("-------------------------");
      Os.println("Processing namespace:"+ns);
      curNS = ns;
      if (ns != "dojox")
        topLevel(ns);
      addMissing(ns);
      nameSpace(Reflect.field(api,ns));
    }

    generateNSfiles() ;

    all.writeString("
class All {
   public static function main() { }
}");
    
    all.close();
  }

  static function
  topLevel(ns:String) {
    var top:Base = Reflect.field(api,ns),
      name = toProper(ns);
    fo = js.io.File.write(to(name+".hx"),true);
    writeTypedefHeader(name);

    for (f in Reflect.fields(api)) {
      if (f.startsWith(ns)) {
        var
          o = Reflect.field(api,f),
          t = Reflect.field(o,"type"),
          cl = Reflect.field(o,"classlike"),
          name = f.split(".");

        name.shift();

        if (name.length > 1) continue;
        
        if (t != null && t == "Function" && !cl) {
          
          genFunction(name.join("."),o);
          trace("FUNCTION:"+f);
        }
      }
    }

    writeBody(top,false);
    
    fo.close();
  }

  static function
  genFunction(name:String,o:Method) {
    write("function ");
    
    write(name + "(");
    genParam(o.parameters);
    
    var ret:Array<{type:String}> = Reflect.field(o,"return-types");
    if (ret == null)
      write("):Void;\n");
    else
      write("):"+getType(ret[0].type)+";\n");
  }

  
  static function
  nameSpace(ns) {
    provides(Reflect.field(ns,PROVIDES));
  }
  
  static inline function
  lookup(path):Base {
    return Reflect.field(api,path);
  }

  static function
  withFile(path,process:Void->Void) {
    // !! setting global here
    fo = js.io.File.write(to(path),true);
    //    try {
      process();
      fo.close();
      //} catch(exc:Dynamic) {
      //trace("exc:withFile:"+exc);
      //fo.close();
      //}
  }
  
  static function
  provides(prv:Array<String>) {
    if (prv != null) {
      for (p in prv) {
        var actual = lookup(p);
        if (actual != null && actual.location != null) {
          var
            asTypedef = treatAsTypedef(actual.location),
            asClass = treatAsClass(actual.location);
          
          if ((actual.classlike && !blacklisted(actual.location))
              || ( asTypedef || asClass)) {
            var s = p.split("."),
              path = s.join("/") + ".hx",
              dir = s.slice(0,-1),
              lastEl = s[s.length-1];

            var
              firstChar = lastEl.charAt(0),
              secChar = lastEl.charAt(1);
            
            if (firstChar == "_" && secChar == secChar.toLowerCase())
                continue;
            else {
              if (firstChar.toLowerCase() == firstChar) {
                continue;
              }
            }
                         
            Os.mkdir(to(dir.join("/")));
            withFile(path,function() {
                Os.println("Writing "+actual.location);
                all.writeString("import "+actual.location + ";\n");
                write("package "+dir.join(".") +";\n\n");
                if (asTypedef)
                  writeTypedefHeader(className(actual));
                else
                  writeClassHeader(actual,className(actual));
                
                writeBody(actual,true);
              });
          }
        } else {
          //trace("missing def : "+p);
        }
      }
    } else trace("bugger");
  }

  static function
  className(obj:Base) {
    return
      if (obj.location != null)
        obj.location.split(".").pop();
      else
        "NONAME!";
  }

  static function
  writeClassHeader(obj:Base,cn) {
    var extended = false;
    write("extern class "+cn);
    if (obj.superclass != null &&
        ! class_blacklist.exists(function(b) {
            return b == obj.superclass ; })) {
      extended = true;
      write(" extends "+obj.superclass);
    }

    //writeImplements(obj,cn,extended) ; 
    write(" {\n");
  }

  static function
  getImplements(obj:Base):Array<String> {
    var mixins = Reflect.field(obj,"mixins");
    if (mixins == null) return [];
    var instance:Array<{location:String}> = Reflect.field(mixins,"instance");
    if (instance == null) return [];
    return instance
      .filter(function(el) { return el.location != null &&
            el.location != obj.superclass;})
      .map(function(el) { return el.location; }).array();
  }
  
  /*
  static function
  writeImplements(obj:Base,cn,extended) {
    var sc = obj.superclass;
    for (i in getImplements(obj)) {
      if (i != sc) {
        write(((extended)? "," : "") + " implements "+i);
      }
    }
  }
  */

  static function
  writeTypedefHeader(cn) {
    write("typedef "+cn+" = {\n");
  }

  static function
  writeBody(obj:Base,writePub = true) {
    var constructor = false;

    if (inheritFrom(obj,"dijit._Widget")) {
      write("public function new(prms:Dynamic,?name:Dynamic):Void;\n");
      constructor = true;
    }
        
    eachMethod(obj,function(m) {
        if (m.name != "constructor") {
          genMethod(obj,m,writePub);
        } else {
          if (!constructor) {
            write("public function new(");
            genParam(m.parameters);
            write("):Void;\n");
          }
        }
      });
    
    eachProperty(obj,function(p) {
        genProp(obj,p,writePub);
      });

    write("\n}\n");
  }

  static function
  getProps(o):Array<Property> {
    return Reflect.field(o,PROPS);
  }

  static function
  eachProperty(obj:Dynamic,cb:Property->Void) {
    var props:Array<Property> = aggregateAttrs(obj,PROPS);
    if (props != null) {
      for (p in props) {
        cb(p);
      }
    }
  }

  static function 
  eachMethod(obj:Dynamic,cb:Method->Void) {
    var mthds:Array<Method> = aggregateAttrs(obj,METHODS);
    if (mthds != null) {
      for(m in mthds) {
        cb(m);
      }
    }
  }

  static function
  priv(m:Base) {
    var f = Reflect.field(m,"private");
    if (f) return true;
    return false;
  }

  static function
  inheritFrom(obj:Base,superClass:String) {
    if (obj != null && obj.superclass != null) {
      var o = lookup(obj.superclass);
      if (o != null && o.location != null) {
        if (o.location == superClass)
          return true;
        else
          return inheritFrom(o,superClass);
      }
    }
    return false;
  }
  
  static function
  genMethod(o:Base,m:Method,writePub = true) {
    if (m.name != null) {
      if (!priv(m)) {
        if(uniqueAttr(o,m,METHODS) ) {
          commentIllegalName(m.name);
          
          if (writePub)
            write("public ");
          
          write("function ");

          write(m.name + "(");
          genParam(m.parameters);
            
          var ret:Array<{type:String}> = Reflect.field(m,"return-types");
          if (ret == null)
            write("):Void;\n");
          else
            write("):"+getType(ret[0].type)+";\n");
        }
      }
    }
  }

  static function
  genParam(prms:Array<Param>) {
    if (prms != null) {
      var a = new Array<String>();
      for (p in prms) {
        var opt = (p.usage == "optional") ? "?" : "";
        if (p.name == "callback")
          a.push(opt+"callBack:"+getType(p.type));
        else {
          if (p.name == "override")
            a.push(opt+"overRide:"+getType(p.type));
          else
            a.push(opt+p.name + ":"+getType(p.type));
        }
      }
      var s = a.join(",");
      write(s);
    }
  }

  static function
  getType(t:Null<String>):String {
    if (t == null) return "Dynamic";
    
    var tweak = (t.endsWith(":") || t.endsWith("."))
      ? t.substr(0,t.length-1) : t;
    
    return switch(tweak.toLowerCase()) {
    case "float","number": "Float";
    case "string[]" : "Array<String>";
    case "string" : "String";
    case "object": "Dynamic";
    case "function","string|function":"Dynamic";
    case "boolean","bool": "Bool";
    case "integer","int": "Int";
    case "array" : "Array<Dynamic>";
    case "date": "Date";
    case "dojo.nodelist","nodelist" : "dojo.NodeList";
    default:
      "Dynamic";
    }
  }

  static function
  aggregateAttrs(obj:Base,type:String,parentLoc:String=null):Dynamic {
    if (obj != null) {
      var
        bases = getImplements(obj),
        unique = new Hash<Base>();
      
      if (obj.location != null) {
        if (parentLoc == "dojox.mobile.app.AlertDialog") {
          trace("pushing "+obj.location+" for AlertDialog");
        }
        bases.push(obj.location);
      }
      
      bases.iter(function(b) {
          var attrs:Array<Base> = Reflect.field(lookup(b),type);
          if (attrs != null) {
            for (a in attrs) {
              if (a.name != null && !unique.exists(a.name)) {
                unique.set(a.name,a);
              }
            }
          }
        });
      
      /*
        if (bases.length > 1) {
        trace("bases:"+bases.length+", "+obj.location);
        trace("final:"+final);
        }
      */
      //trace("array len = "+unique.array().length);
       if (parentLoc == "dojox.mobile.app.AlertDialog") {
         trace(unique.keys());
       }
      return unique.array();
    }
    return null;
  }
  
  static function
  uniqueAttr(obj:Base,attr:Base,type:String) {
    if (obj != null && obj.superclass != null) {
      var o = lookup(obj.superclass);
      var superAttr:Array<Base> = aggregateAttrs(o,type,obj.location);
      if (superAttr != null) {
        if(superAttr.exists(function(pp) {
              return pp.name == attr.name; })) {
          if (attr.name == "onClick")
            trace("ommitting onClick "+obj.location+", super: "+o.location);
          return false;
        } else
          return uniqueAttr(o,attr,type);
      } else
      return uniqueAttr(o,attr,type);
    } 
    return true;
  }

  static function
  genProp(obj:Base,p:Property,writePub = true) {
    if (p != null) { 
      if (!priv(p)) {
        
        if (prop_blacklist.exists(function(pp) {
              return pp == p.name; })) return;
      
        if (uniqueAttr(obj,p,PROPS)) {

          commentIllegalName(p.name);
          
          if (writePub)
            write("public ");
          
          write("var "+p.name+":"+getType(p.type)+";\n");
        }
      }
    }
  }

  static function
  generateNSfiles() {
    namespaces.iter(function(ns) {
        var o:Dynamic = lookup(ns);
        if (o != null) {
          var
            s = ns.split("."),
            nsName = toProper(s[s.length-1]),
            f = s.join("/")+ "/"+ nsName +".hx";
          
          if (Os.exists(to(f))) {
            nsName = "N" + nsName;
            f = s.join("/")+ "/"+ nsName +".hx";
          }

          withFile(f,function() {
              write("package "+ns+" ;\n\n"); 
              writeTypedefHeader(nsName);
              writeBody(o,false);
            });
          }
      });
  }
}