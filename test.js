$estr = function() { return js.Boot.__string_rec(this,''); }
if(typeof haxe=='undefined') haxe = {} ; ;
if(!haxe.io) haxe.io = {}
haxe.io.BytesBuffer = function(p) { if( p === $_ ) return; {
	$s.push("haxe.io.BytesBuffer::new");
	var $spos = $s.length;
	this.b = new Array();
	$s.pop();
}}
haxe.io.BytesBuffer.__name__ = ["haxe","io","BytesBuffer"];
haxe.io.BytesBuffer.prototype.add = function(src) {
	$s.push("haxe.io.BytesBuffer::add");
	var $spos = $s.length;
	var b1 = this.b;
	var b2 = src.b;
	{
		var _g1 = 0, _g = src.length;
		while(_g1 < _g) {
			var i = _g1++;
			this.b.push(b2[i]);
		}
	}
	$s.pop();
}
haxe.io.BytesBuffer.prototype.addByte = function($byte) {
	$s.push("haxe.io.BytesBuffer::addByte");
	var $spos = $s.length;
	this.b.push($byte);
	$s.pop();
}
haxe.io.BytesBuffer.prototype.addBytes = function(src,pos,len) {
	$s.push("haxe.io.BytesBuffer::addBytes");
	var $spos = $s.length;
	if(pos < 0 || len < 0 || pos + len > src.length) throw haxe.io.Error.OutsideBounds;
	var b1 = this.b;
	var b2 = src.b;
	{
		var _g1 = pos, _g = pos + len;
		while(_g1 < _g) {
			var i = _g1++;
			this.b.push(b2[i]);
		}
	}
	$s.pop();
}
haxe.io.BytesBuffer.prototype.b = null;
haxe.io.BytesBuffer.prototype.getBytes = function() {
	$s.push("haxe.io.BytesBuffer::getBytes");
	var $spos = $s.length;
	var nb = js.Node.newBuffer(this.b);
	bytes = new haxe.io.Bytes(nb.length,nb);
	this.b = null;
	{
		$s.pop();
		return bytes;
	}
	$s.pop();
}
haxe.io.BytesBuffer.prototype.__class__ = haxe.io.BytesBuffer;
if(typeof js=='undefined') js = {} ; ;
js.Node = function() { }
js.Node.__name__ = ["js","Node"];
js.Node.require = null;
js.Node.paths = null;
js.Node.setTimeout = null;
js.Node.clearTimeout = null;
js.Node.setInterval = null;
js.Node.clearInterval = null;
js.Node.global = null;
js.Node.process = null;
js.Node.sys = null;
js.Node.fs = null;
js.Node.net = null;
js.Node.http = null;
js.Node.__filename = null;
js.Node.__dirname = null;
js.Node.module = null;
js.Node.stringify = null;
js.Node.parse = null;
js.Node.path = null;
js.Node.url = null;
js.Node.queryString = null;
js.Node.console = null;
js.Node.spawn = function(cmd,prms,env) {
	$s.push("js.Node::spawn");
	var $spos = $s.length;
	var cp = js.Node.require("child_process");
	{
		var $tmp = cp.spawn(cmd,prms,env);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.Node.exec = function(cmd,options,fn) {
	$s.push("js.Node::exec");
	var $spos = $s.length;
	var cp = js.Node.require("child_process");
	if(options != null) cp.exec(cmd,options,fn);
	else cp.exec(cmd,fn);
	$s.pop();
}
js.Node.newBuffer = function(d,enc) {
	$s.push("js.Node::newBuffer");
	var $spos = $s.length;
	var b = js.Node.require("buffer");
	if(enc != null) {
		var $tmp = new b.Buffer(d,enc);
		$s.pop();
		return $tmp;
	}
	else {
		var $tmp = new b.Buffer(d);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.Node.newScript = function(code,fileName) {
	$s.push("js.Node::newScript");
	var $spos = $s.length;
	var b = js.Node.process.binding("evals");
	{
		var $tmp = new b.Script(code,fileName);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.Node.crypto = function() {
	$s.push("js.Node::crypto");
	var $spos = $s.length;
	{
		var $tmp = js.Node.require("crypto");
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.Node.dns = function() {
	$s.push("js.Node::dns");
	var $spos = $s.length;
	{
		var $tmp = js.Node.require("dns");
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.Node.prototype.__class__ = js.Node;
haxe.io.Input = function() { }
haxe.io.Input.__name__ = ["haxe","io","Input"];
haxe.io.Input.prototype.bigEndian = null;
haxe.io.Input.prototype.close = function() {
	$s.push("haxe.io.Input::close");
	var $spos = $s.length;
	null;
	$s.pop();
}
haxe.io.Input.prototype.read = function(nbytes) {
	$s.push("haxe.io.Input::read");
	var $spos = $s.length;
	var s = haxe.io.Bytes.alloc(nbytes);
	var p = 0;
	while(nbytes > 0) {
		var k = this.readBytes(s,p,nbytes);
		if(k == 0) throw haxe.io.Error.Blocked;
		p += k;
		nbytes -= k;
	}
	{
		$s.pop();
		return s;
	}
	$s.pop();
}
haxe.io.Input.prototype.readAll = function(bufsize) {
	$s.push("haxe.io.Input::readAll");
	var $spos = $s.length;
	if(bufsize == null) bufsize = 16384;
	var buf = haxe.io.Bytes.alloc(bufsize);
	var total = new haxe.io.BytesBuffer();
	try {
		while(true) {
			var len = this.readBytes(buf,0,bufsize);
			if(len == 0) throw haxe.io.Error.Blocked;
			total.addBytes(buf,0,len);
		}
	}
	catch( $e0 ) {
		if( js.Boot.__instanceof($e0,haxe.io.Eof) ) {
			var e = $e0;
			{
				$e = [];
				while($s.length >= $spos) $e.unshift($s.pop());
				$s.push($e[0]);
				null;
			}
		} else throw($e0);
	}
	{
		var $tmp = total.getBytes();
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.io.Input.prototype.readByte = function() {
	$s.push("haxe.io.Input::readByte");
	var $spos = $s.length;
	{
		var $tmp = (function($this) {
			var $r;
			throw "Not implemented";
			return $r;
		}(this));
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.io.Input.prototype.readBytes = function(s,pos,len) {
	$s.push("haxe.io.Input::readBytes");
	var $spos = $s.length;
	var k = len;
	var b = s.b;
	if(pos < 0 || len < 0 || pos + len > s.length) throw haxe.io.Error.OutsideBounds;
	while(k > 0) {
		b[pos] = this.readByte();
		pos++;
		k--;
	}
	{
		$s.pop();
		return len;
	}
	$s.pop();
}
haxe.io.Input.prototype.readDouble = function() {
	$s.push("haxe.io.Input::readDouble");
	var $spos = $s.length;
	throw "Not implemented";
	{
		$s.pop();
		return 0;
	}
	$s.pop();
}
haxe.io.Input.prototype.readFloat = function() {
	$s.push("haxe.io.Input::readFloat");
	var $spos = $s.length;
	throw "Not implemented";
	{
		$s.pop();
		return 0;
	}
	$s.pop();
}
haxe.io.Input.prototype.readFullBytes = function(s,pos,len) {
	$s.push("haxe.io.Input::readFullBytes");
	var $spos = $s.length;
	while(len > 0) {
		var k = this.readBytes(s,pos,len);
		pos += k;
		len -= k;
	}
	$s.pop();
}
haxe.io.Input.prototype.readInt16 = function() {
	$s.push("haxe.io.Input::readInt16");
	var $spos = $s.length;
	var ch1 = this.readByte();
	var ch2 = this.readByte();
	var n = (this.bigEndian?ch2 | (ch1 << 8):ch1 | (ch2 << 8));
	if((n & 32768) != 0) {
		var $tmp = n - 65536;
		$s.pop();
		return $tmp;
	}
	{
		$s.pop();
		return n;
	}
	$s.pop();
}
haxe.io.Input.prototype.readInt24 = function() {
	$s.push("haxe.io.Input::readInt24");
	var $spos = $s.length;
	var ch1 = this.readByte();
	var ch2 = this.readByte();
	var ch3 = this.readByte();
	var n = (this.bigEndian?(ch3 | (ch2 << 8)) | (ch1 << 16):(ch1 | (ch2 << 8)) | (ch3 << 16));
	if((n & 8388608) != 0) {
		var $tmp = n - 16777216;
		$s.pop();
		return $tmp;
	}
	{
		$s.pop();
		return n;
	}
	$s.pop();
}
haxe.io.Input.prototype.readInt31 = function() {
	$s.push("haxe.io.Input::readInt31");
	var $spos = $s.length;
	var ch1, ch2, ch3, ch4;
	if(this.bigEndian) {
		ch4 = this.readByte();
		ch3 = this.readByte();
		ch2 = this.readByte();
		ch1 = this.readByte();
	}
	else {
		ch1 = this.readByte();
		ch2 = this.readByte();
		ch3 = this.readByte();
		ch4 = this.readByte();
	}
	if(((ch4 & 128) == 0) != ((ch4 & 64) == 0)) throw haxe.io.Error.Overflow;
	{
		var $tmp = ((ch1 | (ch2 << 8)) | (ch3 << 16)) | (ch4 << 24);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.io.Input.prototype.readInt32 = function() {
	$s.push("haxe.io.Input::readInt32");
	var $spos = $s.length;
	var ch1 = this.readByte();
	var ch2 = this.readByte();
	var ch3 = this.readByte();
	var ch4 = this.readByte();
	{
		var $tmp = (this.bigEndian?(((ch1 << 8) | ch2) << 16) | ((ch3 << 8) | ch4):(((ch4 << 8) | ch3) << 16) | ((ch2 << 8) | ch1));
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.io.Input.prototype.readInt8 = function() {
	$s.push("haxe.io.Input::readInt8");
	var $spos = $s.length;
	var n = this.readByte();
	if(n >= 128) {
		var $tmp = n - 256;
		$s.pop();
		return $tmp;
	}
	{
		$s.pop();
		return n;
	}
	$s.pop();
}
haxe.io.Input.prototype.readLine = function() {
	$s.push("haxe.io.Input::readLine");
	var $spos = $s.length;
	var buf = new StringBuf();
	var last;
	var s;
	try {
		while((last = this.readByte()) != 10) buf.b[buf.b.length] = String.fromCharCode(last);
		s = buf.b.join("");
		if(s.charCodeAt(s.length - 1) == 13) s = s.substr(0,-1);
	}
	catch( $e1 ) {
		if( js.Boot.__instanceof($e1,haxe.io.Eof) ) {
			var e = $e1;
			{
				$e = [];
				while($s.length >= $spos) $e.unshift($s.pop());
				$s.push($e[0]);
				s = buf.b.join("");
				if(s.length == 0) throw (e);
			}
		} else throw($e1);
	}
	{
		$s.pop();
		return s;
	}
	$s.pop();
}
haxe.io.Input.prototype.readString = function(len) {
	$s.push("haxe.io.Input::readString");
	var $spos = $s.length;
	var b = haxe.io.Bytes.alloc(len);
	this.readFullBytes(b,0,len);
	{
		var $tmp = b.toString();
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.io.Input.prototype.readUInt16 = function() {
	$s.push("haxe.io.Input::readUInt16");
	var $spos = $s.length;
	var ch1 = this.readByte();
	var ch2 = this.readByte();
	{
		var $tmp = (this.bigEndian?ch2 | (ch1 << 8):ch1 | (ch2 << 8));
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.io.Input.prototype.readUInt24 = function() {
	$s.push("haxe.io.Input::readUInt24");
	var $spos = $s.length;
	var ch1 = this.readByte();
	var ch2 = this.readByte();
	var ch3 = this.readByte();
	{
		var $tmp = (this.bigEndian?(ch3 | (ch2 << 8)) | (ch1 << 16):(ch1 | (ch2 << 8)) | (ch3 << 16));
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.io.Input.prototype.readUInt30 = function() {
	$s.push("haxe.io.Input::readUInt30");
	var $spos = $s.length;
	var ch1 = this.readByte();
	var ch2 = this.readByte();
	var ch3 = this.readByte();
	var ch4 = this.readByte();
	if(((this.bigEndian?ch1:ch4)) >= 64) throw haxe.io.Error.Overflow;
	{
		var $tmp = (this.bigEndian?((ch4 | (ch3 << 8)) | (ch2 << 16)) | (ch1 << 24):((ch1 | (ch2 << 8)) | (ch3 << 16)) | (ch4 << 24));
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.io.Input.prototype.readUntil = function(end) {
	$s.push("haxe.io.Input::readUntil");
	var $spos = $s.length;
	var buf = new StringBuf();
	var last;
	while((last = this.readByte()) != end) buf.b[buf.b.length] = String.fromCharCode(last);
	{
		var $tmp = buf.b.join("");
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.io.Input.prototype.setEndian = function(b) {
	$s.push("haxe.io.Input::setEndian");
	var $spos = $s.length;
	this.bigEndian = b;
	{
		$s.pop();
		return b;
	}
	$s.pop();
}
haxe.io.Input.prototype.__class__ = haxe.io.Input;
js.Sys = function() { }
js.Sys.__name__ = ["js","Sys"];
js.Sys.args = function() {
	$s.push("js.Sys::args");
	var $spos = $s.length;
	{
		var $tmp = js.Node.process.argv;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.Sys.getEnv = function(s) {
	$s.push("js.Sys::getEnv");
	var $spos = $s.length;
	{
		var $tmp = Reflect.field(js.Node.process.env,s);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.Sys.putEnv = function(s,v) {
	$s.push("js.Sys::putEnv");
	var $spos = $s.length;
	null;
	$s.pop();
}
js.Sys.sleep = function(seconds) {
	$s.push("js.Sys::sleep");
	var $spos = $s.length;
	null;
	$s.pop();
}
js.Sys.setTimeLocale = function(loc) {
	$s.push("js.Sys::setTimeLocale");
	var $spos = $s.length;
	{
		$s.pop();
		return false;
	}
	$s.pop();
}
js.Sys.getCwd = function() {
	$s.push("js.Sys::getCwd");
	var $spos = $s.length;
	{
		var $tmp = js.Node.process.cwd();
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.Sys.setCwd = function(s) {
	$s.push("js.Sys::setCwd");
	var $spos = $s.length;
	js.Node.process.chdir(s);
	$s.pop();
}
js.Sys.systemName = function() {
	$s.push("js.Sys::systemName");
	var $spos = $s.length;
	{
		$s.pop();
		return "nodejs";
	}
	$s.pop();
}
js.Sys.escapeArgument = function(arg) {
	$s.push("js.Sys::escapeArgument");
	var $spos = $s.length;
	var ok = true;
	{
		var _g1 = 0, _g = arg.length;
		while(_g1 < _g) {
			var i = _g1++;
			switch(arg.charCodeAt(i)) {
			case 32:case 34:{
				ok = false;
			}break;
			case 0:case 13:case 10:{
				arg = arg.substr(0,i);
			}break;
			}
		}
	}
	if(ok) {
		$s.pop();
		return arg;
	}
	{
		var $tmp = ("\"" + arg.split("\"").join("\\\"")) + "\"";
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.Sys.commandAsync = function(cmd,args,ret) {
	$s.push("js.Sys::commandAsync");
	var $spos = $s.length;
	if(args != null) {
		cmd = js.Sys.escapeArgument(cmd);
		{
			var _g = 0;
			while(_g < args.length) {
				var a = args[_g];
				++_g;
				cmd += " " + js.Sys.escapeArgument(a);
			}
		}
	}
	js.Node.exec(cmd,null,function(err,stdout,stderr) {
		$s.push("js.Sys::commandAsync@72");
		var $spos = $s.length;
		var result = 0, output = stdout;
		if(err != null) result = err.code;
		ret(result,output);
		$s.pop();
	});
	$s.pop();
}
js.Sys.exit = function(code) {
	$s.push("js.Sys::exit");
	var $spos = $s.length;
	{
		var $tmp = js.Node.process.exit(code);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.Sys.time = function() {
	$s.push("js.Sys::time");
	var $spos = $s.length;
	{
		$s.pop();
		return 0.0;
	}
	$s.pop();
}
js.Sys.cpuTime = function() {
	$s.push("js.Sys::cpuTime");
	var $spos = $s.length;
	{
		$s.pop();
		return 0.0;
	}
	$s.pop();
}
js.Sys.executablePath = function() {
	$s.push("js.Sys::executablePath");
	var $spos = $s.length;
	{
		var $tmp = js.Node.__filename;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.Sys.environment = function() {
	$s.push("js.Sys::environment");
	var $spos = $s.length;
	var env = js.Node.process.env, h = new Hash();
	{
		var _g = 0, _g1 = Reflect.fields(env);
		while(_g < _g1.length) {
			var f = _g1[_g];
			++_g;
			h.set(f,Reflect.field(env,f));
		}
	}
	{
		$s.pop();
		return h;
	}
	$s.pop();
}
js.Sys.prototype.__class__ = js.Sys;
StringTools = function() { }
StringTools.__name__ = ["StringTools"];
StringTools.urlEncode = function(s) {
	$s.push("StringTools::urlEncode");
	var $spos = $s.length;
	{
		var $tmp = encodeURIComponent(s);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
StringTools.urlDecode = function(s) {
	$s.push("StringTools::urlDecode");
	var $spos = $s.length;
	{
		var $tmp = decodeURIComponent(s.split("+").join(" "));
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
StringTools.htmlEscape = function(s) {
	$s.push("StringTools::htmlEscape");
	var $spos = $s.length;
	{
		var $tmp = s.split("&").join("&amp;").split("<").join("&lt;").split(">").join("&gt;");
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
StringTools.htmlUnescape = function(s) {
	$s.push("StringTools::htmlUnescape");
	var $spos = $s.length;
	{
		var $tmp = s.split("&gt;").join(">").split("&lt;").join("<").split("&amp;").join("&");
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
StringTools.startsWith = function(s,start) {
	$s.push("StringTools::startsWith");
	var $spos = $s.length;
	{
		var $tmp = (s.length >= start.length && s.substr(0,start.length) == start);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
StringTools.endsWith = function(s,end) {
	$s.push("StringTools::endsWith");
	var $spos = $s.length;
	var elen = end.length;
	var slen = s.length;
	{
		var $tmp = (slen >= elen && s.substr(slen - elen,elen) == end);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
StringTools.isSpace = function(s,pos) {
	$s.push("StringTools::isSpace");
	var $spos = $s.length;
	var c = s.charCodeAt(pos);
	{
		var $tmp = (c >= 9 && c <= 13) || c == 32;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
StringTools.ltrim = function(s) {
	$s.push("StringTools::ltrim");
	var $spos = $s.length;
	var l = s.length;
	var r = 0;
	while(r < l && StringTools.isSpace(s,r)) {
		r++;
	}
	if(r > 0) {
		var $tmp = s.substr(r,l - r);
		$s.pop();
		return $tmp;
	}
	else {
		$s.pop();
		return s;
	}
	$s.pop();
}
StringTools.rtrim = function(s) {
	$s.push("StringTools::rtrim");
	var $spos = $s.length;
	var l = s.length;
	var r = 0;
	while(r < l && StringTools.isSpace(s,(l - r) - 1)) {
		r++;
	}
	if(r > 0) {
		{
			var $tmp = s.substr(0,l - r);
			$s.pop();
			return $tmp;
		}
	}
	else {
		{
			$s.pop();
			return s;
		}
	}
	$s.pop();
}
StringTools.trim = function(s) {
	$s.push("StringTools::trim");
	var $spos = $s.length;
	{
		var $tmp = StringTools.ltrim(StringTools.rtrim(s));
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
StringTools.rpad = function(s,c,l) {
	$s.push("StringTools::rpad");
	var $spos = $s.length;
	var sl = s.length;
	var cl = c.length;
	while(sl < l) {
		if(l - sl < cl) {
			s += c.substr(0,l - sl);
			sl = l;
		}
		else {
			s += c;
			sl += cl;
		}
	}
	{
		$s.pop();
		return s;
	}
	$s.pop();
}
StringTools.lpad = function(s,c,l) {
	$s.push("StringTools::lpad");
	var $spos = $s.length;
	var ns = "";
	var sl = s.length;
	if(sl >= l) {
		$s.pop();
		return s;
	}
	var cl = c.length;
	while(sl < l) {
		if(l - sl < cl) {
			ns += c.substr(0,l - sl);
			sl = l;
		}
		else {
			ns += c;
			sl += cl;
		}
	}
	{
		var $tmp = ns + s;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
StringTools.replace = function(s,sub,by) {
	$s.push("StringTools::replace");
	var $spos = $s.length;
	{
		var $tmp = s.split(sub).join(by);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
StringTools.hex = function(n,digits) {
	$s.push("StringTools::hex");
	var $spos = $s.length;
	var s = "";
	var hexChars = "0123456789ABCDEF";
	do {
		s = hexChars.charAt(n & 15) + s;
		n >>>= 4;
	} while(n > 0);
	if(digits != null) while(s.length < digits) s = "0" + s;
	{
		$s.pop();
		return s;
	}
	$s.pop();
}
StringTools.prototype.__class__ = StringTools;
Reflect = function() { }
Reflect.__name__ = ["Reflect"];
Reflect.hasField = function(o,field) {
	$s.push("Reflect::hasField");
	var $spos = $s.length;
	if(o.hasOwnProperty != null) {
		var $tmp = o.hasOwnProperty(field);
		$s.pop();
		return $tmp;
	}
	var arr = Reflect.fields(o);
	{ var $it2 = arr.iterator();
	while( $it2.hasNext() ) { var t = $it2.next();
	if(t == field) {
		$s.pop();
		return true;
	}
	}}
	{
		$s.pop();
		return false;
	}
	$s.pop();
}
Reflect.field = function(o,field) {
	$s.push("Reflect::field");
	var $spos = $s.length;
	var v = null;
	try {
		v = o[field];
	}
	catch( $e3 ) {
		{
			var e = $e3;
			{
				$e = [];
				while($s.length >= $spos) $e.unshift($s.pop());
				$s.push($e[0]);
				null;
			}
		}
	}
	{
		$s.pop();
		return v;
	}
	$s.pop();
}
Reflect.setField = function(o,field,value) {
	$s.push("Reflect::setField");
	var $spos = $s.length;
	o[field] = value;
	$s.pop();
}
Reflect.callMethod = function(o,func,args) {
	$s.push("Reflect::callMethod");
	var $spos = $s.length;
	{
		var $tmp = func.apply(o,args);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Reflect.fields = function(o) {
	$s.push("Reflect::fields");
	var $spos = $s.length;
	if(o == null) {
		var $tmp = new Array();
		$s.pop();
		return $tmp;
	}
	var a = new Array();
	if(o.hasOwnProperty) {
		
					for(var i in o)
						if( o.hasOwnProperty(i) )
							a.push(i);
				;
	}
	else {
		var t;
		try {
			t = o.__proto__;
		}
		catch( $e4 ) {
			{
				var e = $e4;
				{
					$e = [];
					while($s.length >= $spos) $e.unshift($s.pop());
					$s.push($e[0]);
					t = null;
				}
			}
		}
		if(t != null) o.__proto__ = null;
		
					for(var i in o)
						if( i != "__proto__" )
							a.push(i);
				;
		if(t != null) o.__proto__ = t;
	}
	{
		$s.pop();
		return a;
	}
	$s.pop();
}
Reflect.isFunction = function(f) {
	$s.push("Reflect::isFunction");
	var $spos = $s.length;
	{
		var $tmp = typeof(f) == "function" && f.__name__ == null;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Reflect.compare = function(a,b) {
	$s.push("Reflect::compare");
	var $spos = $s.length;
	{
		var $tmp = ((a == b)?0:((((a) > (b))?1:-1)));
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Reflect.compareMethods = function(f1,f2) {
	$s.push("Reflect::compareMethods");
	var $spos = $s.length;
	if(f1 == f2) {
		$s.pop();
		return true;
	}
	if(!Reflect.isFunction(f1) || !Reflect.isFunction(f2)) {
		$s.pop();
		return false;
	}
	{
		var $tmp = f1.scope == f2.scope && f1.method == f2.method && f1.method != null;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Reflect.isObject = function(v) {
	$s.push("Reflect::isObject");
	var $spos = $s.length;
	if(v == null) {
		$s.pop();
		return false;
	}
	var t = typeof(v);
	{
		var $tmp = (t == "string" || (t == "object" && !v.__enum__) || (t == "function" && v.__name__ != null));
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Reflect.deleteField = function(o,f) {
	$s.push("Reflect::deleteField");
	var $spos = $s.length;
	if(!Reflect.hasField(o,f)) {
		$s.pop();
		return false;
	}
	delete(o[f]);
	{
		$s.pop();
		return true;
	}
	$s.pop();
}
Reflect.copy = function(o) {
	$s.push("Reflect::copy");
	var $spos = $s.length;
	var o2 = { }
	{
		var _g = 0, _g1 = Reflect.fields(o);
		while(_g < _g1.length) {
			var f = _g1[_g];
			++_g;
			o2[f] = Reflect.field(o,f);
		}
	}
	{
		$s.pop();
		return o2;
	}
	$s.pop();
}
Reflect.makeVarArgs = function(f) {
	$s.push("Reflect::makeVarArgs");
	var $spos = $s.length;
	{
		var $tmp = function() {
			$s.push("Reflect::makeVarArgs@382");
			var $spos = $s.length;
			var a = new Array();
			{
				var _g1 = 0, _g = arguments.length;
				while(_g1 < _g) {
					var i = _g1++;
					a.push(arguments[i]);
				}
			}
			{
				var $tmp = f(a);
				$s.pop();
				return $tmp;
			}
			$s.pop();
		}
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Reflect.prototype.__class__ = Reflect;
haxe.Log = function() { }
haxe.Log.__name__ = ["haxe","Log"];
haxe.Log.trace = function(v,infos) {
	$s.push("haxe.Log::trace");
	var $spos = $s.length;
	js.Boot.__trace(v,infos);
	$s.pop();
}
haxe.Log.clear = function() {
	$s.push("haxe.Log::clear");
	var $spos = $s.length;
	js.Boot.__clear_trace();
	$s.pop();
}
haxe.Log.prototype.__class__ = haxe.Log;
StringBuf = function(p) { if( p === $_ ) return; {
	$s.push("StringBuf::new");
	var $spos = $s.length;
	this.b = new Array();
	$s.pop();
}}
StringBuf.__name__ = ["StringBuf"];
StringBuf.prototype.add = function(x) {
	$s.push("StringBuf::add");
	var $spos = $s.length;
	this.b[this.b.length] = x;
	$s.pop();
}
StringBuf.prototype.addChar = function(c) {
	$s.push("StringBuf::addChar");
	var $spos = $s.length;
	this.b[this.b.length] = String.fromCharCode(c);
	$s.pop();
}
StringBuf.prototype.addSub = function(s,pos,len) {
	$s.push("StringBuf::addSub");
	var $spos = $s.length;
	this.b[this.b.length] = s.substr(pos,len);
	$s.pop();
}
StringBuf.prototype.b = null;
StringBuf.prototype.toString = function() {
	$s.push("StringBuf::toString");
	var $spos = $s.length;
	{
		var $tmp = this.b.join("");
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
StringBuf.prototype.__class__ = StringBuf;
if(typeof bdog=='undefined') bdog = {} ; ;
bdog.Answer = { __ename__ : ["bdog","Answer"], __constructs__ : ["Yes","No","Always"] }
bdog.Answer.Always = ["Always",2];
bdog.Answer.Always.toString = $estr;
bdog.Answer.Always.__enum__ = bdog.Answer;
bdog.Answer.No = ["No",1];
bdog.Answer.No.toString = $estr;
bdog.Answer.No.__enum__ = bdog.Answer;
bdog.Answer.Yes = ["Yes",0];
bdog.Answer.Yes.toString = $estr;
bdog.Answer.Yes.__enum__ = bdog.Answer;
bdog.PathPart = { __ename__ : ["bdog","PathPart"], __constructs__ : ["EXT","NAME","FILE","DIR","PARENT"] }
bdog.PathPart.DIR = ["DIR",3];
bdog.PathPart.DIR.toString = $estr;
bdog.PathPart.DIR.__enum__ = bdog.PathPart;
bdog.PathPart.EXT = ["EXT",0];
bdog.PathPart.EXT.toString = $estr;
bdog.PathPart.EXT.__enum__ = bdog.PathPart;
bdog.PathPart.FILE = ["FILE",2];
bdog.PathPart.FILE.toString = $estr;
bdog.PathPart.FILE.__enum__ = bdog.PathPart;
bdog.PathPart.NAME = ["NAME",1];
bdog.PathPart.NAME.toString = $estr;
bdog.PathPart.NAME.__enum__ = bdog.PathPart;
bdog.PathPart.PARENT = ["PARENT",4];
bdog.PathPart.PARENT.toString = $estr;
bdog.PathPart.PARENT.__enum__ = bdog.PathPart;
bdog.Os = function() { }
bdog.Os.__name__ = ["bdog","Os"];
bdog.Os.template = function(s,ctx) {
	$s.push("bdog.Os::template");
	var $spos = $s.length;
	var tmpl = new haxe.Template(s);
	{
		var $tmp = tmpl.execute(ctx);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
bdog.Os.separator = null;
bdog.Os.print = function(s) {
	$s.push("bdog.Os::print");
	var $spos = $s.length;
	js.Lib.print(s);
	$s.pop();
}
bdog.Os.println = function(s) {
	$s.push("bdog.Os::println");
	var $spos = $s.length;
	js.Lib.println(s);
	$s.pop();
}
bdog.Os.slash = function(d) {
	$s.push("bdog.Os::slash");
	var $spos = $s.length;
	{
		var $tmp = (StringTools.endsWith(d,bdog.Os.separator)?d:(d + bdog.Os.separator));
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
bdog.Os.safeDir = function(dir) {
	$s.push("bdog.Os::safeDir");
	var $spos = $s.length;
	if(js.FileSystem.exists(dir)) {
		if(!js.FileSystem.isDirectory(dir)) throw (("A file is preventing " + dir) + " to be created");
		{
			$s.pop();
			return false;
		}
	}
	try {
		js.FileSystem.createDirectory(dir);
	}
	catch( $e5 ) {
		{
			var e = $e5;
			{
				$e = [];
				while($s.length >= $spos) $e.unshift($s.pop());
				$s.push($e[0]);
				throw "You don't have enough user rights to create the directory " + dir;
			}
		}
	}
	{
		$s.pop();
		return true;
	}
	$s.pop();
}
bdog.Os.newer = function(src,dst) {
	$s.push("bdog.Os::newer");
	var $spos = $s.length;
	if(!js.FileSystem.exists(dst)) {
		$s.pop();
		return true;
	}
	var s = js.FileSystem.stat(src), d = js.FileSystem.stat(dst);
	{
		var $tmp = (s.mtime.getTime() > d.mtime.getTime());
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
bdog.Os.mkdir = function(path) {
	$s.push("bdog.Os::mkdir");
	var $spos = $s.length;
	if(js.FileSystem.exists(path)) {
		$s.pop();
		return;
	}
	var p = path.split(bdog.Os.separator), cur = p.splice(0,2), mydir = null;
	try {
		while(true) {
			mydir = cur.join(bdog.Os.separator) + bdog.Os.separator;
			if(!js.FileSystem.exists(mydir)) js.FileSystem.createDirectory(mydir);
			if(p.length == 0) break;
			cur.push(p.shift());
		}
	}
	catch( $e6 ) {
		{
			var exc = $e6;
			{
				$e = [];
				while($s.length >= $spos) $e.unshift($s.pop());
				$s.push($e[0]);
				haxe.Log.trace(exc,{ fileName : "Os.hx", lineNumber : 134, className : "bdog.Os", methodName : "mkdir"});
				haxe.Log.trace("MKDIR: problem with:" + mydir,{ fileName : "Os.hx", lineNumber : 135, className : "bdog.Os", methodName : "mkdir"});
			}
		}
	}
	$s.pop();
}
bdog.Os.rm = function(f) {
	$s.push("bdog.Os::rm");
	var $spos = $s.length;
	js.FileSystem.deleteFile(f);
	$s.pop();
}
bdog.Os.cp = function(src,dst,ifNewer) {
	$s.push("bdog.Os::cp");
	var $spos = $s.length;
	if(ifNewer == null) ifNewer = false;
	if(ifNewer && !bdog.Os.newer(src,dst)) {
		$s.pop();
		return;
	}
	js.io.File.copy(src,dst);
	$s.pop();
}
bdog.Os.rmdir = function(dir) {
	$s.push("bdog.Os::rmdir");
	var $spos = $s.length;
	{
		var _g = 0, _g1 = js.FileSystem.readDirectory(dir);
		while(_g < _g1.length) {
			var p = _g1[_g];
			++_g;
			var path = (StringTools.endsWith(dir,bdog.Os.separator)?dir:(dir + bdog.Os.separator)) + p;
			if(js.FileSystem.isDirectory(path)) bdog.Os.rmdir(path);
			else js.FileSystem.deleteFile(path);
		}
	}
	js.FileSystem.deleteDirectory(dir);
	$s.pop();
}
bdog.Os.mv = function(file,dst) {
	$s.push("bdog.Os::mv");
	var $spos = $s.length;
	try {
		js.FileSystem.rename(file,dst);
	}
	catch( $e7 ) {
		{
			var ex = $e7;
			{
				$e = [];
				while($s.length >= $spos) $e.unshift($s.pop());
				$s.push($e[0]);
				haxe.Log.trace((("error copying " + file) + " to ") + dst,{ fileName : "Os.hx", lineNumber : 168, className : "bdog.Os", methodName : "mv"});
				throw ex;
			}
		}
	}
	$s.pop();
}
bdog.Os.read = function(file,ctx) {
	$s.push("bdog.Os::read");
	var $spos = $s.length;
	var contents;
	contents = js.io.File.getContent(file);
	{
		var $tmp = ((ctx != null)?bdog.Os.template(contents,ctx):contents);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
bdog.Os.write = function(file,s,ctx) {
	$s.push("bdog.Os::write");
	var $spos = $s.length;
	var f = js.io.File.write(file,false);
	try {
		f.writeString(((ctx != null)?bdog.Os.template(s,ctx):s));
		f.flush();
	}
	catch( $e8 ) {
		{
			var exc = $e8;
			{
				$e = [];
				while($s.length >= $spos) $e.unshift($s.pop());
				$s.push($e[0]);
				f.close();
				throw exc;
			}
		}
	}
	$s.pop();
}
bdog.Os.append = function(file,s,ctx) {
	$s.push("bdog.Os::append");
	var $spos = $s.length;
	var f = js.io.File.append(file,false);
	try {
		f.writeString(((ctx != null)?bdog.Os.template(s,ctx):s));
		f.flush();
	}
	catch( $e9 ) {
		{
			var exc = $e9;
			{
				$e = [];
				while($s.length >= $spos) $e.unshift($s.pop());
				$s.push($e[0]);
				f.close();
				throw exc;
			}
		}
	}
	$s.pop();
}
bdog.Os.path = function(dir,part) {
	$s.push("bdog.Os::path");
	var $spos = $s.length;
	var p = js.Node.path;
	{
		var $tmp = (function($this) {
			var $r;
			var $e = (part);
			switch( $e[1] ) {
			case 0:
			{
				$r = p.extname(dir);
			}break;
			case 2:
			{
				$r = p.basename(dir);
			}break;
			case 3:
			{
				$r = p.dirname(dir);
			}break;
			case 1:
			{
				$r = p.basename(dir,p.extname(dir));
			}break;
			case 4:
			{
				$r = bdog.Os.path(p.dirname(dir),bdog.PathPart.DIR);
			}break;
			default:{
				$r = null;
			}break;
			}
			return $r;
		}(this));
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
bdog.Os.sysName = function() {
	$s.push("bdog.Os::sysName");
	var $spos = $s.length;
	{
		var $tmp = js.Node.process.platform;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
bdog.Os.cd = function(path) {
	$s.push("bdog.Os::cd");
	var $spos = $s.length;
	js.Sys.setCwd(path);
	$s.pop();
}
bdog.Os.cwd = function() {
	$s.push("bdog.Os::cwd");
	var $spos = $s.length;
	{
		var $tmp = js.Sys.getCwd();
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
bdog.Os.exists = function(f) {
	$s.push("bdog.Os::exists");
	var $spos = $s.length;
	{
		var $tmp = js.FileSystem.exists(f);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
bdog.Os.dir = function(d) {
	$s.push("bdog.Os::dir");
	var $spos = $s.length;
	{
		var $tmp = js.FileSystem.readDirectory(d);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
bdog.Os.isDir = function(d) {
	$s.push("bdog.Os::isDir");
	var $spos = $s.length;
	if(!js.FileSystem.exists(d)) {
		$s.pop();
		return false;
	}
	{
		var $tmp = js.FileSystem.isDirectory(d);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
bdog.Os.readTree = function(dir,files,exclude) {
	$s.push("bdog.Os::readTree");
	var $spos = $s.length;
	var dirContent = null;
	if(!js.FileSystem.isDirectory(dir)) throw dir + " is not a directory";
	try {
		dirContent = js.FileSystem.readDirectory(dir);
	}
	catch( $e10 ) {
		{
			var ex = $e10;
			{
				$e = [];
				while($s.length >= $spos) $e.unshift($s.pop());
				$s.push($e[0]);
				haxe.Log.trace("Exception reading directory " + dir,{ fileName : "Os.hx", lineNumber : 273, className : "bdog.Os", methodName : "readTree"});
			}
		}
	}
	if(dirContent == null) new List();
	{
		var _g = 0;
		while(_g < dirContent.length) {
			var f = dirContent[_g];
			++_g;
			if(exclude != null) {
				if(exclude(f)) {
					haxe.Log.trace(("excluding:" + (StringTools.endsWith(dir,bdog.Os.separator)?dir:(dir + bdog.Os.separator))) + f,{ fileName : "Os.hx", lineNumber : 282, className : "bdog.Os", methodName : "readTree"});
					continue;
				}
			}
			var d = (StringTools.endsWith(dir,bdog.Os.separator)?dir:(dir + bdog.Os.separator)) + f;
			try {
				if(js.FileSystem.isDirectory(d)) bdog.Os.readTree(d,files,exclude);
				else files.push(d);
			}
			catch( $e11 ) {
				{
					var e = $e11;
					{
						$e = [];
						while($s.length >= $spos) $e.unshift($s.pop());
						$s.push($e[0]);
						haxe.Log.trace("ok got a link " + d,{ fileName : "Os.hx", lineNumber : 297, className : "bdog.Os", methodName : "readTree"});
						bdog.Os.readTree(d,files,exclude);
					}
				}
			}
		}
	}
	{
		$s.pop();
		return files;
	}
	$s.pop();
}
bdog.Os.files = function(dir,exclude) {
	$s.push("bdog.Os::files");
	var $spos = $s.length;
	{
		var $tmp = bdog.Os.readTree(dir,new List(),exclude);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
bdog.Os.copyTree = function(src,dst,exclude) {
	$s.push("bdog.Os::copyTree");
	var $spos = $s.length;
	var stemLen = (StringTools.endsWith(src,bdog.Os.separator)?src.length:bdog.Os.path(src,bdog.PathPart.DIR).length), fls = bdog.Os.files(src,exclude);
	Lambda.iter(fls,function(f) {
		$s.push("bdog.Os::copyTree@316");
		var $spos = $s.length;
		var dFile = bdog.Os.path(f,bdog.PathPart.FILE), dDir = dst + bdog.Os.path(f.substr(stemLen),bdog.PathPart.DIR);
		bdog.Os.mkdir(dDir);
		js.io.File.copy(f,(StringTools.endsWith(dDir,bdog.Os.separator)?dDir:(dDir + bdog.Os.separator)) + dFile);
		$s.pop();
	});
	$s.pop();
}
bdog.Os.env = function(n) {
	$s.push("bdog.Os::env");
	var $spos = $s.length;
	{
		var $tmp = js.Sys.environment().get(StringTools.trim(n));
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
bdog.Os.exit = function(c) {
	$s.push("bdog.Os::exit");
	var $spos = $s.length;
	js.Sys.exit(c);
	$s.pop();
}
bdog.Os.args = function() {
	$s.push("bdog.Os::args");
	var $spos = $s.length;
	{
		var $tmp = js.Sys.args();
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
bdog.Os.process = function(command,throwOnError,ctx,fn) {
	$s.push("bdog.Os::process");
	var $spos = $s.length;
	if(throwOnError == null) throwOnError = true;
	js.Node.exec(command,null,function(err,stdout,stderr) {
		$s.push("bdog.Os::process@364");
		var $spos = $s.length;
		if(err.code != 0) {
			if(throwOnError) throw stderr;
			else fn(stderr);
		}
		fn(stdout);
		$s.pop();
	});
	$s.pop();
}
bdog.Os.command = function(command,ctx,fn) {
	$s.push("bdog.Os::command");
	var $spos = $s.length;
	var a = new EReg("\\s+","g").split(((ctx != null)?bdog.Os.template(command,ctx):command)), cmd = StringTools.trim(a.shift());
	js.Node.exec(cmd,null,function(err,stdout,stderr) {
		$s.push("bdog.Os::command@407");
		var $spos = $s.length;
		if(err == null) fn(0);
		else fn(err.code);
		$s.pop();
	});
	$s.pop();
}
bdog.Os.log = function(msg,f) {
	$s.push("bdog.Os::log");
	var $spos = $s.length;
	if(f == null) f = "log.log";
	if(!js.FileSystem.exists(f)) bdog.Os.write(f,"date:" + Date.now().toString());
	bdog.Os.append(f,msg + "\n");
	$s.pop();
}
bdog.Os.ask = function(question,always) {
	$s.push("bdog.Os::ask");
	var $spos = $s.length;
	if(always == null) always = false;
	{
		var $tmp = bdog.Answer.Yes;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
bdog.Os.escapeArgument = function(arg) {
	$s.push("bdog.Os::escapeArgument");
	var $spos = $s.length;
	var ok = true;
	{
		var _g1 = 0, _g = arg.length;
		while(_g1 < _g) {
			var i = _g1++;
			switch(arg.charCodeAt(i)) {
			case 32:case 34:{
				ok = false;
			}break;
			case 0:case 13:case 10:{
				arg = arg.substr(0,i);
			}break;
			}
		}
	}
	if(ok) {
		$s.pop();
		return arg;
	}
	{
		var $tmp = ("\"" + arg.split("\"").join("\\\"")) + "\"";
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
bdog.Os.prototype.__class__ = bdog.Os;
js.FileKind = { __ename__ : ["js","FileKind"], __constructs__ : ["kdir","kfile","kother"] }
js.FileKind.kdir = ["kdir",0];
js.FileKind.kdir.toString = $estr;
js.FileKind.kdir.__enum__ = js.FileKind;
js.FileKind.kfile = ["kfile",1];
js.FileKind.kfile.toString = $estr;
js.FileKind.kfile.__enum__ = js.FileKind;
js.FileKind.kother = function(k) { var $x = ["kother",2,k]; $x.__enum__ = js.FileKind; $x.toString = $estr; return $x; }
js.FileSystem = function() { }
js.FileSystem.__name__ = ["js","FileSystem"];
js.FileSystem.exists = function(path) {
	$s.push("js.FileSystem::exists");
	var $spos = $s.length;
	try {
		js.FileSystem.stat(path);
		{
			$s.pop();
			return true;
		}
	}
	catch( $e12 ) {
		{
			var ex = $e12;
			{
				$e = [];
				while($s.length >= $spos) $e.unshift($s.pop());
				$s.push($e[0]);
				null;
			}
		}
	}
	{
		$s.pop();
		return false;
	}
	$s.pop();
}
js.FileSystem.rename = function(path,newpath) {
	$s.push("js.FileSystem::rename");
	var $spos = $s.length;
	js.Node.fs.renameSync(path,newpath);
	$s.pop();
}
js.FileSystem.stat = function(path) {
	$s.push("js.FileSystem::stat");
	var $spos = $s.length;
	var s = js.Node.fs.statSync(path);
	{
		$s.pop();
		return s;
	}
	$s.pop();
}
js.FileSystem.fullPath = function(relpath) {
	$s.push("js.FileSystem::fullPath");
	var $spos = $s.length;
	{
		var $tmp = js.Node.fs.realpathSync(relpath);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.FileSystem.getFileKind = function(stat) {
	$s.push("js.FileSystem::getFileKind");
	var $spos = $s.length;
	if(stat.isBlockDevice()) {
		$s.pop();
		return "block";
	}
	if(stat.isCharacterDevice()) {
		$s.pop();
		return "character";
	}
	if(stat.isSymbolicLink()) {
		$s.pop();
		return "symbolic";
	}
	if(stat.isFIFO()) {
		$s.pop();
		return "fifo";
	}
	if(stat.isSocket()) {
		$s.pop();
		return "socket";
	}
	{
		$s.pop();
		return null;
	}
	$s.pop();
}
js.FileSystem.kind = function(path) {
	$s.push("js.FileSystem::kind");
	var $spos = $s.length;
	try {
		var stat = js.Node.fs.statSync(path);
		{
			var $tmp = (stat.isDirectory()?js.FileKind.kdir:(stat.isFile()?js.FileKind.kfile:js.FileKind.kother(js.FileSystem.getFileKind(stat))));
			$s.pop();
			return $tmp;
		}
	}
	catch( $e13 ) {
		{
			var exc = $e13;
			{
				$e = [];
				while($s.length >= $spos) $e.unshift($s.pop());
				$s.push($e[0]);
				haxe.Log.trace((("kind:" + exc) + ", ") + path,{ fileName : "FileSystem.hx", lineNumber : 72, className : "js.FileSystem", methodName : "kind"});
			}
		}
	}
	{
		$s.pop();
		return null;
	}
	$s.pop();
}
js.FileSystem.isDirectory = function(path) {
	$s.push("js.FileSystem::isDirectory");
	var $spos = $s.length;
	{
		var $tmp = js.FileSystem.kind(path) == js.FileKind.kdir;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.FileSystem.createDirectory = function(path) {
	$s.push("js.FileSystem::createDirectory");
	var $spos = $s.length;
	js.Node.fs.mkdirSync(path,493);
	$s.pop();
}
js.FileSystem.deleteFile = function(path) {
	$s.push("js.FileSystem::deleteFile");
	var $spos = $s.length;
	js.Node.fs.unlinkSync(path);
	$s.pop();
}
js.FileSystem.deleteDirectory = function(path) {
	$s.push("js.FileSystem::deleteDirectory");
	var $spos = $s.length;
	js.Node.fs.rmdirSync(path);
	$s.pop();
}
js.FileSystem.readDirectory = function(path) {
	$s.push("js.FileSystem::readDirectory");
	var $spos = $s.length;
	{
		var $tmp = js.Node.fs.readdirSync(path);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.FileSystem.prototype.__class__ = js.FileSystem;
haxe.io.Output = function() { }
haxe.io.Output.__name__ = ["haxe","io","Output"];
haxe.io.Output.prototype.bigEndian = null;
haxe.io.Output.prototype.close = function() {
	$s.push("haxe.io.Output::close");
	var $spos = $s.length;
	null;
	$s.pop();
}
haxe.io.Output.prototype.flush = function() {
	$s.push("haxe.io.Output::flush");
	var $spos = $s.length;
	null;
	$s.pop();
}
haxe.io.Output.prototype.prepare = function(nbytes) {
	$s.push("haxe.io.Output::prepare");
	var $spos = $s.length;
	null;
	$s.pop();
}
haxe.io.Output.prototype.setEndian = function(b) {
	$s.push("haxe.io.Output::setEndian");
	var $spos = $s.length;
	this.bigEndian = b;
	{
		$s.pop();
		return b;
	}
	$s.pop();
}
haxe.io.Output.prototype.write = function(s) {
	$s.push("haxe.io.Output::write");
	var $spos = $s.length;
	var l = s.length;
	var p = 0;
	while(l > 0) {
		var k = this.writeBytes(s,p,l);
		if(k == 0) throw haxe.io.Error.Blocked;
		p += k;
		l -= k;
	}
	$s.pop();
}
haxe.io.Output.prototype.writeByte = function(c) {
	$s.push("haxe.io.Output::writeByte");
	var $spos = $s.length;
	throw "Not implemented";
	$s.pop();
}
haxe.io.Output.prototype.writeBytes = function(s,pos,len) {
	$s.push("haxe.io.Output::writeBytes");
	var $spos = $s.length;
	var k = len;
	var b = s.b;
	if(pos < 0 || len < 0 || pos + len > s.length) throw haxe.io.Error.OutsideBounds;
	while(k > 0) {
		this.writeByte(b[pos]);
		pos++;
		k--;
	}
	{
		$s.pop();
		return len;
	}
	$s.pop();
}
haxe.io.Output.prototype.writeDouble = function(x) {
	$s.push("haxe.io.Output::writeDouble");
	var $spos = $s.length;
	throw "Not implemented";
	$s.pop();
}
haxe.io.Output.prototype.writeFloat = function(x) {
	$s.push("haxe.io.Output::writeFloat");
	var $spos = $s.length;
	throw "Not implemented";
	$s.pop();
}
haxe.io.Output.prototype.writeFullBytes = function(s,pos,len) {
	$s.push("haxe.io.Output::writeFullBytes");
	var $spos = $s.length;
	while(len > 0) {
		var k = this.writeBytes(s,pos,len);
		pos += k;
		len -= k;
	}
	$s.pop();
}
haxe.io.Output.prototype.writeInput = function(i,bufsize) {
	$s.push("haxe.io.Output::writeInput");
	var $spos = $s.length;
	if(bufsize == null) bufsize = 4096;
	var buf = haxe.io.Bytes.alloc(bufsize);
	try {
		while(true) {
			var len = i.readBytes(buf,0,bufsize);
			if(len == 0) throw haxe.io.Error.Blocked;
			var p = 0;
			while(len > 0) {
				var k = this.writeBytes(buf,p,len);
				if(k == 0) throw haxe.io.Error.Blocked;
				p += k;
				len -= k;
			}
		}
	}
	catch( $e14 ) {
		if( js.Boot.__instanceof($e14,haxe.io.Eof) ) {
			var e = $e14;
			{
				$e = [];
				while($s.length >= $spos) $e.unshift($s.pop());
				$s.push($e[0]);
				null;
			}
		} else throw($e14);
	}
	$s.pop();
}
haxe.io.Output.prototype.writeInt16 = function(x) {
	$s.push("haxe.io.Output::writeInt16");
	var $spos = $s.length;
	if(x < -32768 || x >= 32768) throw haxe.io.Error.Overflow;
	this.writeUInt16(x & 65535);
	$s.pop();
}
haxe.io.Output.prototype.writeInt24 = function(x) {
	$s.push("haxe.io.Output::writeInt24");
	var $spos = $s.length;
	if(x < -8388608 || x >= 8388608) throw haxe.io.Error.Overflow;
	this.writeUInt24(x & 16777215);
	$s.pop();
}
haxe.io.Output.prototype.writeInt31 = function(x) {
	$s.push("haxe.io.Output::writeInt31");
	var $spos = $s.length;
	if(x < -1073741824 || x >= 1073741824) throw haxe.io.Error.Overflow;
	if(this.bigEndian) {
		this.writeByte(x >>> 24);
		this.writeByte((x >> 16) & 255);
		this.writeByte((x >> 8) & 255);
		this.writeByte(x & 255);
	}
	else {
		this.writeByte(x & 255);
		this.writeByte((x >> 8) & 255);
		this.writeByte((x >> 16) & 255);
		this.writeByte(x >>> 24);
	}
	$s.pop();
}
haxe.io.Output.prototype.writeInt32 = function(x) {
	$s.push("haxe.io.Output::writeInt32");
	var $spos = $s.length;
	if(this.bigEndian) {
		this.writeByte(haxe.Int32.toInt((x) >>> 24));
		this.writeByte(haxe.Int32.toInt((x) >>> 16) & 255);
		this.writeByte(haxe.Int32.toInt((x) >>> 8) & 255);
		this.writeByte(haxe.Int32.toInt((x) & (255)));
	}
	else {
		this.writeByte(haxe.Int32.toInt((x) & (255)));
		this.writeByte(haxe.Int32.toInt((x) >>> 8) & 255);
		this.writeByte(haxe.Int32.toInt((x) >>> 16) & 255);
		this.writeByte(haxe.Int32.toInt((x) >>> 24));
	}
	$s.pop();
}
haxe.io.Output.prototype.writeInt8 = function(x) {
	$s.push("haxe.io.Output::writeInt8");
	var $spos = $s.length;
	if(x < -128 || x >= 128) throw haxe.io.Error.Overflow;
	this.writeByte(x & 255);
	$s.pop();
}
haxe.io.Output.prototype.writeString = function(s) {
	$s.push("haxe.io.Output::writeString");
	var $spos = $s.length;
	var b = haxe.io.Bytes.ofString(s);
	this.writeFullBytes(b,0,b.length);
	$s.pop();
}
haxe.io.Output.prototype.writeUInt16 = function(x) {
	$s.push("haxe.io.Output::writeUInt16");
	var $spos = $s.length;
	if(x < 0 || x >= 65536) throw haxe.io.Error.Overflow;
	if(this.bigEndian) {
		this.writeByte(x >> 8);
		this.writeByte(x & 255);
	}
	else {
		this.writeByte(x & 255);
		this.writeByte(x >> 8);
	}
	$s.pop();
}
haxe.io.Output.prototype.writeUInt24 = function(x) {
	$s.push("haxe.io.Output::writeUInt24");
	var $spos = $s.length;
	if(x < 0 || x >= 16777216) throw haxe.io.Error.Overflow;
	if(this.bigEndian) {
		this.writeByte(x >> 16);
		this.writeByte((x >> 8) & 255);
		this.writeByte(x & 255);
	}
	else {
		this.writeByte(x & 255);
		this.writeByte((x >> 8) & 255);
		this.writeByte(x >> 16);
	}
	$s.pop();
}
haxe.io.Output.prototype.writeUInt30 = function(x) {
	$s.push("haxe.io.Output::writeUInt30");
	var $spos = $s.length;
	if(x < 0 || x >= 1073741824) throw haxe.io.Error.Overflow;
	if(this.bigEndian) {
		this.writeByte(x >>> 24);
		this.writeByte((x >> 16) & 255);
		this.writeByte((x >> 8) & 255);
		this.writeByte(x & 255);
	}
	else {
		this.writeByte(x & 255);
		this.writeByte((x >> 8) & 255);
		this.writeByte((x >> 16) & 255);
		this.writeByte(x >>> 24);
	}
	$s.pop();
}
haxe.io.Output.prototype.__class__ = haxe.io.Output;
if(!js.io) js.io = {}
js.io.FileOutput = function(f) { if( f === $_ ) return; {
	$s.push("js.io.FileOutput::new");
	var $spos = $s.length;
	this.__f = f;
	this.bufOne = js.Node.newBuffer(1);
	this.pos = 0;
	$s.pop();
}}
js.io.FileOutput.__name__ = ["js","io","FileOutput"];
js.io.FileOutput.__super__ = haxe.io.Output;
for(var k in haxe.io.Output.prototype ) js.io.FileOutput.prototype[k] = haxe.io.Output.prototype[k];
js.io.FileOutput.prototype.__f = null;
js.io.FileOutput.prototype.bufOne = null;
js.io.FileOutput.prototype.close = function() {
	$s.push("js.io.FileOutput::close");
	var $spos = $s.length;
	js.Node.fs.closeSync(this.__f);
	$s.pop();
}
js.io.FileOutput.prototype.flush = function() {
	$s.push("js.io.FileOutput::flush");
	var $spos = $s.length;
	haxe.Log.trace("calling flush",{ fileName : "FileOutput.hx", lineNumber : 61, className : "js.io.FileOutput", methodName : "flush"});
	$s.pop();
}
js.io.FileOutput.prototype.pos = null;
js.io.FileOutput.prototype.seek = function(p,at) {
	$s.push("js.io.FileOutput::seek");
	var $spos = $s.length;
	if(at != js.io.FileSeek.SeekBegin) throw "I only do SeekBegin";
	this.pos = p;
	$s.pop();
}
js.io.FileOutput.prototype.tell = function() {
	$s.push("js.io.FileOutput::tell");
	var $spos = $s.length;
	{
		var $tmp = this.pos;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.io.FileOutput.prototype.writeByte = function(c) {
	$s.push("js.io.FileOutput::writeByte");
	var $spos = $s.length;
	try {
		this.bufOne[0] = c;
		this.pos += js.Node.fs.writeSync(this.__f,this.bufOne,0,1,this.pos);
	}
	catch( $e15 ) {
		{
			var e = $e15;
			{
				$e = [];
				while($s.length >= $spos) $e.unshift($s.pop());
				$s.push($e[0]);
				throw haxe.io.Error.Custom(e);
			}
		}
	}
	$s.pop();
}
js.io.FileOutput.prototype.writeBytes = function(s,p,l) {
	$s.push("js.io.FileOutput::writeBytes");
	var $spos = $s.length;
	{
		var $tmp = (function($this) {
			var $r;
			try {
				$r = (function($this) {
					var $r;
					var nw = js.Node.fs.writeSync($this.__f,s.b.slice(p,p + l),0,l,$this.pos);
					$this.pos += nw;
					$r = nw;
					return $r;
				}($this));
			}
			catch( $e16 ) {
				{
					var e = $e16;
					$r = (function($this) {
						var $r;
						$e = [];
						while($s.length >= $spos) $e.unshift($s.pop());
						$s.push($e[0]);
						$r = (function($this) {
							var $r;
							throw haxe.io.Error.Custom(e);
							return $r;
						}($this));
						return $r;
					}($this));
				}
			}
			return $r;
		}(this));
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.io.FileOutput.prototype.__class__ = js.io.FileOutput;
haxe.Int32 = function() { }
haxe.Int32.__name__ = ["haxe","Int32"];
haxe.Int32.make = function(a,b) {
	$s.push("haxe.Int32::make");
	var $spos = $s.length;
	{
		var $tmp = (a << 16) | b;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Int32.ofInt = function(x) {
	$s.push("haxe.Int32::ofInt");
	var $spos = $s.length;
	{
		var $tmp = x;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Int32.toInt = function(x) {
	$s.push("haxe.Int32::toInt");
	var $spos = $s.length;
	if((((x) >> 30) & 1) != ((x) >>> 31)) throw "Overflow " + x;
	{
		var $tmp = (x) & -1;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Int32.toNativeInt = function(x) {
	$s.push("haxe.Int32::toNativeInt");
	var $spos = $s.length;
	{
		var $tmp = x;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Int32.add = function(a,b) {
	$s.push("haxe.Int32::add");
	var $spos = $s.length;
	{
		var $tmp = (a) + (b);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Int32.sub = function(a,b) {
	$s.push("haxe.Int32::sub");
	var $spos = $s.length;
	{
		var $tmp = (a) - (b);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Int32.mul = function(a,b) {
	$s.push("haxe.Int32::mul");
	var $spos = $s.length;
	{
		var $tmp = (a) * (b);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Int32.div = function(a,b) {
	$s.push("haxe.Int32::div");
	var $spos = $s.length;
	{
		var $tmp = Std["int"]((a) / (b));
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Int32.mod = function(a,b) {
	$s.push("haxe.Int32::mod");
	var $spos = $s.length;
	{
		var $tmp = (a) % (b);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Int32.shl = function(a,b) {
	$s.push("haxe.Int32::shl");
	var $spos = $s.length;
	{
		var $tmp = (a) << b;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Int32.shr = function(a,b) {
	$s.push("haxe.Int32::shr");
	var $spos = $s.length;
	{
		var $tmp = (a) >> b;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Int32.ushr = function(a,b) {
	$s.push("haxe.Int32::ushr");
	var $spos = $s.length;
	{
		var $tmp = (a) >>> b;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Int32.and = function(a,b) {
	$s.push("haxe.Int32::and");
	var $spos = $s.length;
	{
		var $tmp = (a) & (b);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Int32.or = function(a,b) {
	$s.push("haxe.Int32::or");
	var $spos = $s.length;
	{
		var $tmp = (a) | (b);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Int32.xor = function(a,b) {
	$s.push("haxe.Int32::xor");
	var $spos = $s.length;
	{
		var $tmp = (a) ^ (b);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Int32.neg = function(a) {
	$s.push("haxe.Int32::neg");
	var $spos = $s.length;
	{
		var $tmp = -(a);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Int32.complement = function(a) {
	$s.push("haxe.Int32::complement");
	var $spos = $s.length;
	{
		var $tmp = ~(a);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Int32.compare = function(a,b) {
	$s.push("haxe.Int32::compare");
	var $spos = $s.length;
	{
		var $tmp = a - b;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Int32.prototype.__class__ = haxe.Int32;
if(!haxe._Template) haxe._Template = {}
haxe._Template.TemplateExpr = { __ename__ : ["haxe","_Template","TemplateExpr"], __constructs__ : ["OpVar","OpExpr","OpIf","OpStr","OpBlock","OpForeach","OpMacro"] }
haxe._Template.TemplateExpr.OpBlock = function(l) { var $x = ["OpBlock",4,l]; $x.__enum__ = haxe._Template.TemplateExpr; $x.toString = $estr; return $x; }
haxe._Template.TemplateExpr.OpExpr = function(expr) { var $x = ["OpExpr",1,expr]; $x.__enum__ = haxe._Template.TemplateExpr; $x.toString = $estr; return $x; }
haxe._Template.TemplateExpr.OpForeach = function(expr,loop) { var $x = ["OpForeach",5,expr,loop]; $x.__enum__ = haxe._Template.TemplateExpr; $x.toString = $estr; return $x; }
haxe._Template.TemplateExpr.OpIf = function(expr,eif,eelse) { var $x = ["OpIf",2,expr,eif,eelse]; $x.__enum__ = haxe._Template.TemplateExpr; $x.toString = $estr; return $x; }
haxe._Template.TemplateExpr.OpMacro = function(name,params) { var $x = ["OpMacro",6,name,params]; $x.__enum__ = haxe._Template.TemplateExpr; $x.toString = $estr; return $x; }
haxe._Template.TemplateExpr.OpStr = function(str) { var $x = ["OpStr",3,str]; $x.__enum__ = haxe._Template.TemplateExpr; $x.toString = $estr; return $x; }
haxe._Template.TemplateExpr.OpVar = function(v) { var $x = ["OpVar",0,v]; $x.__enum__ = haxe._Template.TemplateExpr; $x.toString = $estr; return $x; }
EReg = function(r,opt) { if( r === $_ ) return; {
	$s.push("EReg::new");
	var $spos = $s.length;
	opt = opt.split("u").join("");
	this.r = new RegExp(r,opt);
	$s.pop();
}}
EReg.__name__ = ["EReg"];
EReg.prototype.customReplace = function(s,f) {
	$s.push("EReg::customReplace");
	var $spos = $s.length;
	var buf = new StringBuf();
	while(true) {
		if(!this.match(s)) break;
		buf.b[buf.b.length] = this.matchedLeft();
		buf.b[buf.b.length] = f(this);
		s = this.matchedRight();
	}
	buf.b[buf.b.length] = s;
	{
		var $tmp = buf.b.join("");
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
EReg.prototype.match = function(s) {
	$s.push("EReg::match");
	var $spos = $s.length;
	this.r.m = this.r.exec(s);
	this.r.s = s;
	this.r.l = RegExp.leftContext;
	this.r.r = RegExp.rightContext;
	{
		var $tmp = (this.r.m != null);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
EReg.prototype.matched = function(n) {
	$s.push("EReg::matched");
	var $spos = $s.length;
	{
		var $tmp = (this.r.m != null && n >= 0 && n < this.r.m.length?this.r.m[n]:(function($this) {
			var $r;
			throw "EReg::matched";
			return $r;
		}(this)));
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
EReg.prototype.matchedLeft = function() {
	$s.push("EReg::matchedLeft");
	var $spos = $s.length;
	if(this.r.m == null) throw "No string matched";
	if(this.r.l == null) {
		var $tmp = this.r.s.substr(0,this.r.m.index);
		$s.pop();
		return $tmp;
	}
	{
		var $tmp = this.r.l;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
EReg.prototype.matchedPos = function() {
	$s.push("EReg::matchedPos");
	var $spos = $s.length;
	if(this.r.m == null) throw "No string matched";
	{
		var $tmp = { pos : this.r.m.index, len : this.r.m[0].length}
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
EReg.prototype.matchedRight = function() {
	$s.push("EReg::matchedRight");
	var $spos = $s.length;
	if(this.r.m == null) throw "No string matched";
	if(this.r.r == null) {
		var sz = this.r.m.index + this.r.m[0].length;
		{
			var $tmp = this.r.s.substr(sz,this.r.s.length - sz);
			$s.pop();
			return $tmp;
		}
	}
	{
		var $tmp = this.r.r;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
EReg.prototype.r = null;
EReg.prototype.replace = function(s,by) {
	$s.push("EReg::replace");
	var $spos = $s.length;
	{
		var $tmp = s.replace(this.r,by);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
EReg.prototype.split = function(s) {
	$s.push("EReg::split");
	var $spos = $s.length;
	var d = "#__delim__#";
	{
		var $tmp = s.replace(this.r,d).split(d);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
EReg.prototype.__class__ = EReg;
haxe.Template = function(str) { if( str === $_ ) return; {
	$s.push("haxe.Template::new");
	var $spos = $s.length;
	var tokens = this.parseTokens(str);
	this.expr = this.parseBlock(tokens);
	if(!tokens.isEmpty()) throw ("Unexpected '" + tokens.first().s) + "'";
	$s.pop();
}}
haxe.Template.__name__ = ["haxe","Template"];
haxe.Template.prototype.buf = null;
haxe.Template.prototype.context = null;
haxe.Template.prototype.execute = function(context,macros) {
	$s.push("haxe.Template::execute");
	var $spos = $s.length;
	this.macros = (macros == null?{ }:macros);
	this.context = context;
	this.stack = new List();
	this.buf = new StringBuf();
	this.run(this.expr);
	{
		var $tmp = this.buf.b.join("");
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Template.prototype.expr = null;
haxe.Template.prototype.macros = null;
haxe.Template.prototype.makeConst = function(v) {
	$s.push("haxe.Template::makeConst");
	var $spos = $s.length;
	haxe.Template.expr_trim.match(v);
	v = haxe.Template.expr_trim.matched(1);
	if(v.charCodeAt(0) == 34) {
		var str = v.substr(1,v.length - 2);
		{
			var $tmp = function() {
				$s.push("haxe.Template::makeConst@228");
				var $spos = $s.length;
				{
					$s.pop();
					return str;
				}
				$s.pop();
			}
			$s.pop();
			return $tmp;
		}
	}
	if(haxe.Template.expr_int.match(v)) {
		var i = Std.parseInt(v);
		{
			var $tmp = function() {
				$s.push("haxe.Template::makeConst@232");
				var $spos = $s.length;
				{
					$s.pop();
					return i;
				}
				$s.pop();
			}
			$s.pop();
			return $tmp;
		}
	}
	if(haxe.Template.expr_float.match(v)) {
		var f = Std.parseFloat(v);
		{
			var $tmp = function() {
				$s.push("haxe.Template::makeConst@236");
				var $spos = $s.length;
				{
					$s.pop();
					return f;
				}
				$s.pop();
			}
			$s.pop();
			return $tmp;
		}
	}
	var me = this;
	{
		var $tmp = function() {
			$s.push("haxe.Template::makeConst@239");
			var $spos = $s.length;
			{
				var $tmp = me.resolve(v);
				$s.pop();
				return $tmp;
			}
			$s.pop();
		}
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Template.prototype.makeExpr = function(l) {
	$s.push("haxe.Template::makeExpr");
	var $spos = $s.length;
	{
		var $tmp = this.makePath(this.makeExpr2(l),l);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Template.prototype.makeExpr2 = function(l) {
	$s.push("haxe.Template::makeExpr2");
	var $spos = $s.length;
	var p = l.pop();
	if(p == null) throw "<eof>";
	if(p.s) {
		var $tmp = this.makeConst(p.p);
		$s.pop();
		return $tmp;
	}
	switch(p.p) {
	case "(":{
		var e1 = this.makeExpr(l);
		var p1 = l.pop();
		if(p1 == null || p1.s) throw p1.p;
		if(p1.p == ")") {
			$s.pop();
			return e1;
		}
		var e2 = this.makeExpr(l);
		var p2 = l.pop();
		if(p2 == null || p2.p != ")") throw p2.p;
		{
			var $tmp = (function($this) {
				var $r;
				switch(p1.p) {
				case "+":{
					$r = function() {
						$s.push("haxe.Template::makeExpr2@279");
						var $spos = $s.length;
						{
							var $tmp = e1() + e2();
							$s.pop();
							return $tmp;
						}
						$s.pop();
					}
				}break;
				case "-":{
					$r = function() {
						$s.push("haxe.Template::makeExpr2@280");
						var $spos = $s.length;
						{
							var $tmp = e1() - e2();
							$s.pop();
							return $tmp;
						}
						$s.pop();
					}
				}break;
				case "*":{
					$r = function() {
						$s.push("haxe.Template::makeExpr2@281");
						var $spos = $s.length;
						{
							var $tmp = e1() * e2();
							$s.pop();
							return $tmp;
						}
						$s.pop();
					}
				}break;
				case "/":{
					$r = function() {
						$s.push("haxe.Template::makeExpr2@282");
						var $spos = $s.length;
						{
							var $tmp = e1() / e2();
							$s.pop();
							return $tmp;
						}
						$s.pop();
					}
				}break;
				case ">":{
					$r = function() {
						$s.push("haxe.Template::makeExpr2@283");
						var $spos = $s.length;
						{
							var $tmp = e1() > e2();
							$s.pop();
							return $tmp;
						}
						$s.pop();
					}
				}break;
				case "<":{
					$r = function() {
						$s.push("haxe.Template::makeExpr2@284");
						var $spos = $s.length;
						{
							var $tmp = e1() < e2();
							$s.pop();
							return $tmp;
						}
						$s.pop();
					}
				}break;
				case ">=":{
					$r = function() {
						$s.push("haxe.Template::makeExpr2@285");
						var $spos = $s.length;
						{
							var $tmp = e1() >= e2();
							$s.pop();
							return $tmp;
						}
						$s.pop();
					}
				}break;
				case "<=":{
					$r = function() {
						$s.push("haxe.Template::makeExpr2@286");
						var $spos = $s.length;
						{
							var $tmp = e1() <= e2();
							$s.pop();
							return $tmp;
						}
						$s.pop();
					}
				}break;
				case "==":{
					$r = function() {
						$s.push("haxe.Template::makeExpr2@287");
						var $spos = $s.length;
						{
							var $tmp = e1() == e2();
							$s.pop();
							return $tmp;
						}
						$s.pop();
					}
				}break;
				case "!=":{
					$r = function() {
						$s.push("haxe.Template::makeExpr2@288");
						var $spos = $s.length;
						{
							var $tmp = e1() != e2();
							$s.pop();
							return $tmp;
						}
						$s.pop();
					}
				}break;
				case "&&":{
					$r = function() {
						$s.push("haxe.Template::makeExpr2@289");
						var $spos = $s.length;
						{
							var $tmp = e1() && e2();
							$s.pop();
							return $tmp;
						}
						$s.pop();
					}
				}break;
				case "||":{
					$r = function() {
						$s.push("haxe.Template::makeExpr2@290");
						var $spos = $s.length;
						{
							var $tmp = e1() || e2();
							$s.pop();
							return $tmp;
						}
						$s.pop();
					}
				}break;
				default:{
					$r = (function($this) {
						var $r;
						throw "Unknown operation " + p1.p;
						return $r;
					}($this));
				}break;
				}
				return $r;
			}(this));
			$s.pop();
			return $tmp;
		}
	}break;
	case "!":{
		var e = this.makeExpr(l);
		{
			var $tmp = function() {
				$s.push("haxe.Template::makeExpr2@295");
				var $spos = $s.length;
				var v = e();
				{
					var $tmp = (v == null || v == false);
					$s.pop();
					return $tmp;
				}
				$s.pop();
			}
			$s.pop();
			return $tmp;
		}
	}break;
	case "-":{
		var e = this.makeExpr(l);
		{
			var $tmp = function() {
				$s.push("haxe.Template::makeExpr2@301");
				var $spos = $s.length;
				{
					var $tmp = -e();
					$s.pop();
					return $tmp;
				}
				$s.pop();
			}
			$s.pop();
			return $tmp;
		}
	}break;
	}
	throw p.p;
	$s.pop();
}
haxe.Template.prototype.makePath = function(e,l) {
	$s.push("haxe.Template::makePath");
	var $spos = $s.length;
	var p = l.first();
	if(p == null || p.p != ".") {
		$s.pop();
		return e;
	}
	l.pop();
	var field = l.pop();
	if(field == null || !field.s) throw field.p;
	var f = field.p;
	haxe.Template.expr_trim.match(f);
	f = haxe.Template.expr_trim.matched(1);
	{
		var $tmp = this.makePath(function() {
			$s.push("haxe.Template::makePath@253");
			var $spos = $s.length;
			{
				var $tmp = Reflect.field(e(),f);
				$s.pop();
				return $tmp;
			}
			$s.pop();
		},l);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Template.prototype.parse = function(tokens) {
	$s.push("haxe.Template::parse");
	var $spos = $s.length;
	var t = tokens.pop();
	var p = t.p;
	if(t.s) {
		var $tmp = haxe._Template.TemplateExpr.OpStr(p);
		$s.pop();
		return $tmp;
	}
	if(t.l != null) {
		var pe = new List();
		{
			var _g = 0, _g1 = t.l;
			while(_g < _g1.length) {
				var p1 = _g1[_g];
				++_g;
				pe.add(this.parseBlock(this.parseTokens(p1)));
			}
		}
		{
			var $tmp = haxe._Template.TemplateExpr.OpMacro(p,pe);
			$s.pop();
			return $tmp;
		}
	}
	if(p.substr(0,3) == "if ") {
		p = p.substr(3,p.length - 3);
		var e = this.parseExpr(p);
		var eif = this.parseBlock(tokens);
		var t1 = tokens.first();
		var eelse;
		if(t1 == null) throw "Unclosed 'if'";
		if(t1.p == "end") {
			tokens.pop();
			eelse = null;
		}
		else if(t1.p == "else") {
			tokens.pop();
			eelse = this.parseBlock(tokens);
			t1 = tokens.pop();
			if(t1 == null || t1.p != "end") throw "Unclosed 'else'";
		}
		else {
			t1.p = t1.p.substr(4,t1.p.length - 4);
			eelse = this.parse(tokens);
		}
		{
			var $tmp = haxe._Template.TemplateExpr.OpIf(e,eif,eelse);
			$s.pop();
			return $tmp;
		}
	}
	if(p.substr(0,8) == "foreach ") {
		p = p.substr(8,p.length - 8);
		var e = this.parseExpr(p);
		var efor = this.parseBlock(tokens);
		var t1 = tokens.pop();
		if(t1 == null || t1.p != "end") throw "Unclosed 'foreach'";
		{
			var $tmp = haxe._Template.TemplateExpr.OpForeach(e,efor);
			$s.pop();
			return $tmp;
		}
	}
	if(haxe.Template.expr_splitter.match(p)) {
		var $tmp = haxe._Template.TemplateExpr.OpExpr(this.parseExpr(p));
		$s.pop();
		return $tmp;
	}
	{
		var $tmp = haxe._Template.TemplateExpr.OpVar(p);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Template.prototype.parseBlock = function(tokens) {
	$s.push("haxe.Template::parseBlock");
	var $spos = $s.length;
	var l = new List();
	while(true) {
		var t = tokens.first();
		if(t == null) break;
		if(!t.s && (t.p == "end" || t.p == "else" || t.p.substr(0,7) == "elseif ")) break;
		l.add(this.parse(tokens));
	}
	if(l.length == 1) {
		var $tmp = l.first();
		$s.pop();
		return $tmp;
	}
	{
		var $tmp = haxe._Template.TemplateExpr.OpBlock(l);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Template.prototype.parseExpr = function(data) {
	$s.push("haxe.Template::parseExpr");
	var $spos = $s.length;
	var l = new List();
	var expr = data;
	while(haxe.Template.expr_splitter.match(data)) {
		var p = haxe.Template.expr_splitter.matchedPos();
		var k = p.pos + p.len;
		if(p.pos != 0) l.add({ p : data.substr(0,p.pos), s : true});
		var p1 = haxe.Template.expr_splitter.matched(0);
		l.add({ p : p1, s : p1.indexOf("\"") >= 0});
		data = haxe.Template.expr_splitter.matchedRight();
	}
	if(data.length != 0) l.add({ p : data, s : true});
	var e;
	try {
		e = this.makeExpr(l);
		if(!l.isEmpty()) throw l.first().p;
	}
	catch( $e17 ) {
		if( js.Boot.__instanceof($e17,String) ) {
			var s = $e17;
			{
				$e = [];
				while($s.length >= $spos) $e.unshift($s.pop());
				$s.push($e[0]);
				throw (("Unexpected '" + s) + "' in ") + expr;
			}
		} else throw($e17);
	}
	{
		var $tmp = function() {
			$s.push("haxe.Template::parseExpr@214");
			var $spos = $s.length;
			try {
				{
					var $tmp = e();
					$s.pop();
					return $tmp;
				}
			}
			catch( $e18 ) {
				{
					var exc = $e18;
					{
						$e = [];
						while($s.length >= $spos) $e.unshift($s.pop());
						$s.push($e[0]);
						throw (("Error : " + Std.string(exc)) + " in ") + expr;
					}
				}
			}
			$s.pop();
		}
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Template.prototype.parseTokens = function(data) {
	$s.push("haxe.Template::parseTokens");
	var $spos = $s.length;
	var tokens = new List();
	while(haxe.Template.splitter.match(data)) {
		var p = haxe.Template.splitter.matchedPos();
		if(p.pos > 0) tokens.add({ p : data.substr(0,p.pos), s : true, l : null});
		if(data.charCodeAt(p.pos) == 58) {
			tokens.add({ p : data.substr(p.pos + 2,p.len - 4), s : false, l : null});
			data = haxe.Template.splitter.matchedRight();
			continue;
		}
		var parp = p.pos + p.len;
		var npar = 1;
		while(npar > 0) {
			var c = data.charCodeAt(parp);
			if(c == 40) npar++;
			else if(c == 41) npar--;
			else if(c == null) throw "Unclosed macro parenthesis";
			parp++;
		}
		var params = data.substr(p.pos + p.len,(parp - (p.pos + p.len)) - 1).split(",");
		tokens.add({ p : haxe.Template.splitter.matched(2), s : false, l : params});
		data = data.substr(parp,data.length - parp);
	}
	if(data.length > 0) tokens.add({ p : data, s : true, l : null});
	{
		$s.pop();
		return tokens;
	}
	$s.pop();
}
haxe.Template.prototype.resolve = function(v) {
	$s.push("haxe.Template::resolve");
	var $spos = $s.length;
	if(Reflect.hasField(this.context,v)) {
		var $tmp = Reflect.field(this.context,v);
		$s.pop();
		return $tmp;
	}
	{ var $it19 = this.stack.iterator();
	while( $it19.hasNext() ) { var ctx = $it19.next();
	if(Reflect.hasField(ctx,v)) {
		var $tmp = Reflect.field(ctx,v);
		$s.pop();
		return $tmp;
	}
	}}
	if(v == "__current__") {
		var $tmp = this.context;
		$s.pop();
		return $tmp;
	}
	{
		var $tmp = Reflect.field(haxe.Template.globals,v);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.Template.prototype.run = function(e) {
	$s.push("haxe.Template::run");
	var $spos = $s.length;
	var $e = (e);
	switch( $e[1] ) {
	case 0:
	var v = $e[2];
	{
		this.buf.add(Std.string(this.resolve(v)));
	}break;
	case 1:
	var e1 = $e[2];
	{
		this.buf.add(Std.string(e1()));
	}break;
	case 2:
	var eelse = $e[4], eif = $e[3], e1 = $e[2];
	{
		var v = e1();
		if(v == null || v == false) {
			if(eelse != null) this.run(eelse);
		}
		else this.run(eif);
	}break;
	case 3:
	var str = $e[2];
	{
		this.buf.add(str);
	}break;
	case 4:
	var l = $e[2];
	{
		{ var $it20 = l.iterator();
		while( $it20.hasNext() ) { var e1 = $it20.next();
		this.run(e1);
		}}
	}break;
	case 5:
	var loop = $e[3], e1 = $e[2];
	{
		var v = e1();
		try {
			if(v.hasNext == null) {
				var x = v.iterator();
				if(x.hasNext == null) throw null;
				v = x;
			}
		}
		catch( $e21 ) {
			{
				var e2 = $e21;
				{
					$e = [];
					while($s.length >= $spos) $e.unshift($s.pop());
					$s.push($e[0]);
					throw "Cannot iter on " + v;
				}
			}
		}
		this.stack.push(this.context);
		var v1 = v;
		{ var $it22 = v1;
		while( $it22.hasNext() ) { var ctx = $it22.next();
		{
			this.context = ctx;
			this.run(loop);
		}
		}}
		this.context = this.stack.pop();
	}break;
	case 6:
	var params = $e[3], m = $e[2];
	{
		var v = Reflect.field(this.macros,m);
		var pl = new Array();
		var old = this.buf;
		pl.push($closure(this,"resolve"));
		{ var $it23 = params.iterator();
		while( $it23.hasNext() ) { var p = $it23.next();
		{
			var $e = (p);
			switch( $e[1] ) {
			case 0:
			var v1 = $e[2];
			{
				pl.push(this.resolve(v1));
			}break;
			default:{
				this.buf = new StringBuf();
				this.run(p);
				pl.push(this.buf.b.join(""));
			}break;
			}
		}
		}}
		this.buf = old;
		try {
			this.buf.add(Std.string(v.apply(this.macros,pl)));
		}
		catch( $e24 ) {
			{
				var e1 = $e24;
				{
					$e = [];
					while($s.length >= $spos) $e.unshift($s.pop());
					$s.push($e[0]);
					var plstr = (function($this) {
						var $r;
						try {
							$r = pl.join(",");
						}
						catch( $e25 ) {
							{
								var e2 = $e25;
								$r = (function($this) {
									var $r;
									$e = [];
									while($s.length >= $spos) $e.unshift($s.pop());
									$s.push($e[0]);
									$r = "???";
									return $r;
								}($this));
							}
						}
						return $r;
					}(this));
					var msg = ((((("Macro call " + m) + "(") + plstr) + ") failed (") + Std.string(e1)) + ")";
					throw msg;
				}
			}
		}
	}break;
	}
	$s.pop();
}
haxe.Template.prototype.stack = null;
haxe.Template.prototype.__class__ = haxe.Template;
js.io.FileSeek = { __ename__ : ["js","io","FileSeek"], __constructs__ : ["SeekBegin","SeekCur","SeekEnd"] }
js.io.FileSeek.SeekBegin = ["SeekBegin",0];
js.io.FileSeek.SeekBegin.toString = $estr;
js.io.FileSeek.SeekBegin.__enum__ = js.io.FileSeek;
js.io.FileSeek.SeekCur = ["SeekCur",1];
js.io.FileSeek.SeekCur.toString = $estr;
js.io.FileSeek.SeekCur.__enum__ = js.io.FileSeek;
js.io.FileSeek.SeekEnd = ["SeekEnd",2];
js.io.FileSeek.SeekEnd.toString = $estr;
js.io.FileSeek.SeekEnd.__enum__ = js.io.FileSeek;
js.io.File = function() { }
js.io.File.__name__ = ["js","io","File"];
js.io.File.getContent = function(path) {
	$s.push("js.io.File::getContent");
	var $spos = $s.length;
	{
		var $tmp = js.Node.fs.readFileSync(path,"utf8");
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.io.File.getBytes = function(path) {
	$s.push("js.io.File::getBytes");
	var $spos = $s.length;
	var buf = js.Node.fs.readFileSync(path);
	{
		var $tmp = haxe.io.Bytes.ofData(buf);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.io.File.read = function(path,binary) {
	$s.push("js.io.File::read");
	var $spos = $s.length;
	var fd = js.Node.fs.openSync(path,"r+");
	{
		var $tmp = new js.io.FileInput(fd);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.io.File.write = function(path,binary) {
	$s.push("js.io.File::write");
	var $spos = $s.length;
	var fd = js.Node.fs.openSync(path,"w+");
	{
		var $tmp = new js.io.FileOutput(fd);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.io.File.append = function(path,binary) {
	$s.push("js.io.File::append");
	var $spos = $s.length;
	var fd = js.Node.fs.openSync(path,"a");
	{
		var $tmp = new js.io.FileOutput(fd);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.io.File.copy = function(src,dst) {
	$s.push("js.io.File::copy");
	var $spos = $s.length;
	js.Node.fs.writeFileSync(dst,js.io.File.getContent(src));
	$s.pop();
}
js.io.File.getChar = function(echo) {
	$s.push("js.io.File::getChar");
	var $spos = $s.length;
	{
		$s.pop();
		return -1;
	}
	$s.pop();
}
js.io.File.stdinAsync = function(cb) {
	$s.push("js.io.File::stdinAsync");
	var $spos = $s.length;
	var s = js.Node.process.openStdin();
	s.addListener("fd",function(fd) {
		$s.push("js.io.File::stdinAsync@82");
		var $spos = $s.length;
		cb(new js.io.FileInput(fd));
		$s.pop();
	});
	$s.pop();
}
js.io.File.prototype.__class__ = js.io.File;
haxe.io.Bytes = function(length,b) { if( length === $_ ) return; {
	$s.push("haxe.io.Bytes::new");
	var $spos = $s.length;
	this.length = length;
	this.b = b;
	$s.pop();
}}
haxe.io.Bytes.__name__ = ["haxe","io","Bytes"];
haxe.io.Bytes.alloc = function(length) {
	$s.push("haxe.io.Bytes::alloc");
	var $spos = $s.length;
	{
		var $tmp = new haxe.io.Bytes(length,js.Node.newBuffer(length));
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.io.Bytes.ofString = function(s) {
	$s.push("haxe.io.Bytes::ofString");
	var $spos = $s.length;
	var nb = js.Node.newBuffer(s,"utf8");
	{
		var $tmp = new haxe.io.Bytes(nb.length,nb);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.io.Bytes.ofData = function(b) {
	$s.push("haxe.io.Bytes::ofData");
	var $spos = $s.length;
	{
		var $tmp = new haxe.io.Bytes(b.length,b);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.io.Bytes.prototype.b = null;
haxe.io.Bytes.prototype.blit = function(pos,src,srcpos,len) {
	$s.push("haxe.io.Bytes::blit");
	var $spos = $s.length;
	if(pos < 0 || srcpos < 0 || len < 0 || pos + len > this.length || srcpos + len > src.length) throw haxe.io.Error.OutsideBounds;
	src.b.copy(this.b,pos,srcpos,srcpos + len);
	$s.pop();
}
haxe.io.Bytes.prototype.compare = function(other) {
	$s.push("haxe.io.Bytes::compare");
	var $spos = $s.length;
	var b1 = this.b;
	var b2 = other.b;
	var len = ((this.length < other.length)?this.length:other.length);
	{
		var _g = 0;
		while(_g < len) {
			var i = _g++;
			if(b1[i] != b2[i]) {
				var $tmp = b1[i] - b2[i];
				$s.pop();
				return $tmp;
			}
		}
	}
	{
		var $tmp = this.length - other.length;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.io.Bytes.prototype.get = function(pos) {
	$s.push("haxe.io.Bytes::get");
	var $spos = $s.length;
	{
		var $tmp = this.b[pos];
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.io.Bytes.prototype.getData = function() {
	$s.push("haxe.io.Bytes::getData");
	var $spos = $s.length;
	{
		var $tmp = this.b;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.io.Bytes.prototype.length = null;
haxe.io.Bytes.prototype.readString = function(pos,len) {
	$s.push("haxe.io.Bytes::readString");
	var $spos = $s.length;
	if(pos < 0 || len < 0 || pos + len > this.length) throw haxe.io.Error.OutsideBounds;
	var s = "";
	var b = this.b;
	var fcc = $closure(String,"fromCharCode");
	var i = pos;
	var max = pos + len;
	while(i < max) {
		var c = b[i++];
		if(c < 128) {
			if(c == 0) break;
			s += fcc(c);
		}
		else if(c < 224) s += fcc(((c & 63) << 6) | (b[i++] & 127));
		else if(c < 240) {
			var c2 = b[i++];
			s += fcc((((c & 31) << 12) | ((c2 & 127) << 6)) | (b[i++] & 127));
		}
		else {
			var c2 = b[i++];
			var c3 = b[i++];
			s += fcc(((((c & 15) << 18) | ((c2 & 127) << 12)) | ((c3 << 6) & 127)) | (b[i++] & 127));
		}
	}
	{
		$s.pop();
		return s;
	}
	$s.pop();
}
haxe.io.Bytes.prototype.set = function(pos,v) {
	$s.push("haxe.io.Bytes::set");
	var $spos = $s.length;
	this.b[pos] = v;
	$s.pop();
}
haxe.io.Bytes.prototype.sub = function(pos,len) {
	$s.push("haxe.io.Bytes::sub");
	var $spos = $s.length;
	if(pos < 0 || len < 0 || pos + len > this.length) throw haxe.io.Error.OutsideBounds;
	var nb = js.Node.newBuffer(len), slice = this.b.slice(pos,pos + len);
	slice.copy(nb,0,0,len);
	{
		var $tmp = new haxe.io.Bytes(len,nb);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.io.Bytes.prototype.toString = function() {
	$s.push("haxe.io.Bytes::toString");
	var $spos = $s.length;
	{
		var $tmp = this.readString(0,this.length);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
haxe.io.Bytes.prototype.__class__ = haxe.io.Bytes;
js.io.FileInput = function(f) { if( f === $_ ) return; {
	$s.push("js.io.FileInput::new");
	var $spos = $s.length;
	this.__f = f;
	this.bufOne = js.Node.newBuffer(1);
	this.pos = 0;
	this.size = js.Node.fs.fstatSync(this.__f).size;
	haxe.Log.trace("Size is " + this.size,{ fileName : "FileInput.hx", lineNumber : 45, className : "js.io.FileInput", methodName : "new"});
	$s.pop();
}}
js.io.FileInput.__name__ = ["js","io","FileInput"];
js.io.FileInput.__super__ = haxe.io.Input;
for(var k in haxe.io.Input.prototype ) js.io.FileInput.prototype[k] = haxe.io.Input.prototype[k];
js.io.FileInput.prototype.__f = null;
js.io.FileInput.prototype.bufOne = null;
js.io.FileInput.prototype.close = function() {
	$s.push("js.io.FileInput::close");
	var $spos = $s.length;
	js.Node.fs.closeSync(this.__f);
	$s.pop();
}
js.io.FileInput.prototype.eof = function() {
	$s.push("js.io.FileInput::eof");
	var $spos = $s.length;
	{
		var $tmp = this.pos >= this.size;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.io.FileInput.prototype.pos = null;
js.io.FileInput.prototype.readByte = function() {
	$s.push("js.io.FileInput::readByte");
	var $spos = $s.length;
	{
		var $tmp = (function($this) {
			var $r;
			try {
				$r = (function($this) {
					var $r;
					$this.pos += js.Node.fs.readSync($this.__f,$this.bufOne,0,1,$this.pos);
					$r = $this.bufOne[0];
					return $r;
				}($this));
			}
			catch( $e26 ) {
				{
					var e = $e26;
					$r = (function($this) {
						var $r;
						$e = [];
						while($s.length >= $spos) $e.unshift($s.pop());
						$s.push($e[0]);
						$r = (__dollar__typeof(e) == __dollar__tarray?(function($this) {
							var $r;
							throw new haxe.io.Eof();
							return $r;
						}($this)):(function($this) {
							var $r;
							throw haxe.io.Error.Custom(e);
							return $r;
						}($this)));
						return $r;
					}($this));
				}
			}
			return $r;
		}(this));
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.io.FileInput.prototype.readBytes = function(s,p,l) {
	$s.push("js.io.FileInput::readBytes");
	var $spos = $s.length;
	{
		var $tmp = (function($this) {
			var $r;
			try {
				$r = (function($this) {
					var $r;
					var bb = js.Node.newBuffer(l), bytesRead = js.Node.fs.readSync($this.__f,bb,0,l,$this.pos);
					$this.pos += bytesRead;
					s.blit(p,haxe.io.Bytes.ofData(bb),0,bb.length);
					$r = bytesRead;
					return $r;
				}($this));
			}
			catch( $e27 ) {
				{
					var e = $e27;
					$r = (function($this) {
						var $r;
						$e = [];
						while($s.length >= $spos) $e.unshift($s.pop());
						$s.push($e[0]);
						$r = (__dollar__typeof(e) == __dollar__tarray?(function($this) {
							var $r;
							throw new haxe.io.Eof();
							return $r;
						}($this)):(function($this) {
							var $r;
							throw haxe.io.Error.Custom(e);
							return $r;
						}($this)));
						return $r;
					}($this));
				}
			}
			return $r;
		}(this));
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.io.FileInput.prototype.seek = function(p,at) {
	$s.push("js.io.FileInput::seek");
	var $spos = $s.length;
	if(at != js.io.FileSeek.SeekBegin) throw "I only do SeekBegin";
	this.pos = p;
	$s.pop();
}
js.io.FileInput.prototype.size = null;
js.io.FileInput.prototype.tell = function() {
	$s.push("js.io.FileInput::tell");
	var $spos = $s.length;
	{
		var $tmp = this.pos;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.io.FileInput.prototype.__class__ = js.io.FileInput;
IntIter = function(min,max) { if( min === $_ ) return; {
	$s.push("IntIter::new");
	var $spos = $s.length;
	this.min = min;
	this.max = max;
	$s.pop();
}}
IntIter.__name__ = ["IntIter"];
IntIter.prototype.hasNext = function() {
	$s.push("IntIter::hasNext");
	var $spos = $s.length;
	{
		var $tmp = this.min < this.max;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
IntIter.prototype.max = null;
IntIter.prototype.min = null;
IntIter.prototype.next = function() {
	$s.push("IntIter::next");
	var $spos = $s.length;
	{
		var $tmp = this.min++;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
IntIter.prototype.__class__ = IntIter;
haxe.io.Error = { __ename__ : ["haxe","io","Error"], __constructs__ : ["Blocked","Overflow","OutsideBounds","Custom"] }
haxe.io.Error.Blocked = ["Blocked",0];
haxe.io.Error.Blocked.toString = $estr;
haxe.io.Error.Blocked.__enum__ = haxe.io.Error;
haxe.io.Error.Custom = function(e) { var $x = ["Custom",3,e]; $x.__enum__ = haxe.io.Error; $x.toString = $estr; return $x; }
haxe.io.Error.OutsideBounds = ["OutsideBounds",2];
haxe.io.Error.OutsideBounds.toString = $estr;
haxe.io.Error.OutsideBounds.__enum__ = haxe.io.Error;
haxe.io.Error.Overflow = ["Overflow",1];
haxe.io.Error.Overflow.toString = $estr;
haxe.io.Error.Overflow.__enum__ = haxe.io.Error;
Std = function() { }
Std.__name__ = ["Std"];
Std["is"] = function(v,t) {
	$s.push("Std::is");
	var $spos = $s.length;
	{
		var $tmp = js.Boot.__instanceof(v,t);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Std.string = function(s) {
	$s.push("Std::string");
	var $spos = $s.length;
	{
		var $tmp = js.Boot.__string_rec(s,"");
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Std["int"] = function(x) {
	$s.push("Std::int");
	var $spos = $s.length;
	if(x < 0) {
		var $tmp = Math.ceil(x);
		$s.pop();
		return $tmp;
	}
	{
		var $tmp = Math.floor(x);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Std.parseInt = function(x) {
	$s.push("Std::parseInt");
	var $spos = $s.length;
	var v = parseInt(x);
	if(Math.isNaN(v)) {
		$s.pop();
		return null;
	}
	{
		$s.pop();
		return v;
	}
	$s.pop();
}
Std.parseFloat = function(x) {
	$s.push("Std::parseFloat");
	var $spos = $s.length;
	{
		var $tmp = parseFloat(x);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Std.random = function(x) {
	$s.push("Std::random");
	var $spos = $s.length;
	{
		var $tmp = Math.floor(Math.random() * x);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Std.prototype.__class__ = Std;
Lambda = function() { }
Lambda.__name__ = ["Lambda"];
Lambda.array = function(it) {
	$s.push("Lambda::array");
	var $spos = $s.length;
	var a = new Array();
	{ var $it28 = it.iterator();
	while( $it28.hasNext() ) { var i = $it28.next();
	a.push(i);
	}}
	{
		$s.pop();
		return a;
	}
	$s.pop();
}
Lambda.list = function(it) {
	$s.push("Lambda::list");
	var $spos = $s.length;
	var l = new List();
	{ var $it29 = it.iterator();
	while( $it29.hasNext() ) { var i = $it29.next();
	l.add(i);
	}}
	{
		$s.pop();
		return l;
	}
	$s.pop();
}
Lambda.map = function(it,f) {
	$s.push("Lambda::map");
	var $spos = $s.length;
	var l = new List();
	{ var $it30 = it.iterator();
	while( $it30.hasNext() ) { var x = $it30.next();
	l.add(f(x));
	}}
	{
		$s.pop();
		return l;
	}
	$s.pop();
}
Lambda.mapi = function(it,f) {
	$s.push("Lambda::mapi");
	var $spos = $s.length;
	var l = new List();
	var i = 0;
	{ var $it31 = it.iterator();
	while( $it31.hasNext() ) { var x = $it31.next();
	l.add(f(i++,x));
	}}
	{
		$s.pop();
		return l;
	}
	$s.pop();
}
Lambda.has = function(it,elt,cmp) {
	$s.push("Lambda::has");
	var $spos = $s.length;
	if(cmp == null) {
		{ var $it32 = it.iterator();
		while( $it32.hasNext() ) { var x = $it32.next();
		if(x == elt) {
			$s.pop();
			return true;
		}
		}}
	}
	else {
		{ var $it33 = it.iterator();
		while( $it33.hasNext() ) { var x = $it33.next();
		if(cmp(x,elt)) {
			$s.pop();
			return true;
		}
		}}
	}
	{
		$s.pop();
		return false;
	}
	$s.pop();
}
Lambda.exists = function(it,f) {
	$s.push("Lambda::exists");
	var $spos = $s.length;
	{ var $it34 = it.iterator();
	while( $it34.hasNext() ) { var x = $it34.next();
	if(f(x)) {
		$s.pop();
		return true;
	}
	}}
	{
		$s.pop();
		return false;
	}
	$s.pop();
}
Lambda.foreach = function(it,f) {
	$s.push("Lambda::foreach");
	var $spos = $s.length;
	{ var $it35 = it.iterator();
	while( $it35.hasNext() ) { var x = $it35.next();
	if(!f(x)) {
		$s.pop();
		return false;
	}
	}}
	{
		$s.pop();
		return true;
	}
	$s.pop();
}
Lambda.iter = function(it,f) {
	$s.push("Lambda::iter");
	var $spos = $s.length;
	{ var $it36 = it.iterator();
	while( $it36.hasNext() ) { var x = $it36.next();
	f(x);
	}}
	$s.pop();
}
Lambda.filter = function(it,f) {
	$s.push("Lambda::filter");
	var $spos = $s.length;
	var l = new List();
	{ var $it37 = it.iterator();
	while( $it37.hasNext() ) { var x = $it37.next();
	if(f(x)) l.add(x);
	}}
	{
		$s.pop();
		return l;
	}
	$s.pop();
}
Lambda.fold = function(it,f,first) {
	$s.push("Lambda::fold");
	var $spos = $s.length;
	{ var $it38 = it.iterator();
	while( $it38.hasNext() ) { var x = $it38.next();
	first = f(x,first);
	}}
	{
		$s.pop();
		return first;
	}
	$s.pop();
}
Lambda.count = function(it) {
	$s.push("Lambda::count");
	var $spos = $s.length;
	var n = 0;
	{ var $it39 = it.iterator();
	while( $it39.hasNext() ) { var _ = $it39.next();
	++n;
	}}
	{
		$s.pop();
		return n;
	}
	$s.pop();
}
Lambda.empty = function(it) {
	$s.push("Lambda::empty");
	var $spos = $s.length;
	{
		var $tmp = !it.iterator().hasNext();
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Lambda.prototype.__class__ = Lambda;
List = function(p) { if( p === $_ ) return; {
	$s.push("List::new");
	var $spos = $s.length;
	this.length = 0;
	$s.pop();
}}
List.__name__ = ["List"];
List.prototype.add = function(item) {
	$s.push("List::add");
	var $spos = $s.length;
	var x = [item];
	if(this.h == null) this.h = x;
	else this.q[1] = x;
	this.q = x;
	this.length++;
	$s.pop();
}
List.prototype.clear = function() {
	$s.push("List::clear");
	var $spos = $s.length;
	this.h = null;
	this.q = null;
	this.length = 0;
	$s.pop();
}
List.prototype.filter = function(f) {
	$s.push("List::filter");
	var $spos = $s.length;
	var l2 = new List();
	var l = this.h;
	while(l != null) {
		var v = l[0];
		l = l[1];
		if(f(v)) l2.add(v);
	}
	{
		$s.pop();
		return l2;
	}
	$s.pop();
}
List.prototype.first = function() {
	$s.push("List::first");
	var $spos = $s.length;
	{
		var $tmp = (this.h == null?null:this.h[0]);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
List.prototype.h = null;
List.prototype.isEmpty = function() {
	$s.push("List::isEmpty");
	var $spos = $s.length;
	{
		var $tmp = (this.h == null);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
List.prototype.iterator = function() {
	$s.push("List::iterator");
	var $spos = $s.length;
	{
		var $tmp = { h : this.h, hasNext : function() {
			$s.push("List::iterator@196");
			var $spos = $s.length;
			{
				var $tmp = (this.h != null);
				$s.pop();
				return $tmp;
			}
			$s.pop();
		}, next : function() {
			$s.push("List::iterator@199");
			var $spos = $s.length;
			if(this.h == null) {
				$s.pop();
				return null;
			}
			var x = this.h[0];
			this.h = this.h[1];
			{
				$s.pop();
				return x;
			}
			$s.pop();
		}}
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
List.prototype.join = function(sep) {
	$s.push("List::join");
	var $spos = $s.length;
	var s = new StringBuf();
	var first = true;
	var l = this.h;
	while(l != null) {
		if(first) first = false;
		else s.b[s.b.length] = sep;
		s.b[s.b.length] = l[0];
		l = l[1];
	}
	{
		var $tmp = s.b.join("");
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
List.prototype.last = function() {
	$s.push("List::last");
	var $spos = $s.length;
	{
		var $tmp = (this.q == null?null:this.q[0]);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
List.prototype.length = null;
List.prototype.map = function(f) {
	$s.push("List::map");
	var $spos = $s.length;
	var b = new List();
	var l = this.h;
	while(l != null) {
		var v = l[0];
		l = l[1];
		b.add(f(v));
	}
	{
		$s.pop();
		return b;
	}
	$s.pop();
}
List.prototype.pop = function() {
	$s.push("List::pop");
	var $spos = $s.length;
	if(this.h == null) {
		$s.pop();
		return null;
	}
	var x = this.h[0];
	this.h = this.h[1];
	if(this.h == null) this.q = null;
	this.length--;
	{
		$s.pop();
		return x;
	}
	$s.pop();
}
List.prototype.push = function(item) {
	$s.push("List::push");
	var $spos = $s.length;
	var x = [item,this.h];
	this.h = x;
	if(this.q == null) this.q = x;
	this.length++;
	$s.pop();
}
List.prototype.q = null;
List.prototype.remove = function(v) {
	$s.push("List::remove");
	var $spos = $s.length;
	var prev = null;
	var l = this.h;
	while(l != null) {
		if(l[0] == v) {
			if(prev == null) this.h = l[1];
			else prev[1] = l[1];
			if(this.q == l) this.q = prev;
			this.length--;
			{
				$s.pop();
				return true;
			}
		}
		prev = l;
		l = l[1];
	}
	{
		$s.pop();
		return false;
	}
	$s.pop();
}
List.prototype.toString = function() {
	$s.push("List::toString");
	var $spos = $s.length;
	var s = new StringBuf();
	var first = true;
	var l = this.h;
	s.b[s.b.length] = "{";
	while(l != null) {
		if(first) first = false;
		else s.b[s.b.length] = ", ";
		s.b[s.b.length] = Std.string(l[0]);
		l = l[1];
	}
	s.b[s.b.length] = "}";
	{
		var $tmp = s.b.join("");
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
List.prototype.__class__ = List;
Create = function() { }
Create.__name__ = ["Create"];
Create.api = null;
Create.fo = null;
Create.all = null;
Create.keyword = function(p) {
	$s.push("Create::keyword");
	var $spos = $s.length;
	{
		var $tmp = Lambda.exists(Create.keywords,function(kw) {
			$s.push("Create::keyword@77");
			var $spos = $s.length;
			{
				var $tmp = kw == p;
				$s.pop();
				return $tmp;
			}
			$s.pop();
		});
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Create.treatAsClass = function(name) {
	$s.push("Create::treatAsClass");
	var $spos = $s.length;
	{
		var $tmp = Lambda.exists(Create.classLike,function(el) {
			$s.push("Create::treatAsClass@82");
			var $spos = $s.length;
			{
				var $tmp = el == name;
				$s.pop();
				return $tmp;
			}
			$s.pop();
		});
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Create.treatAsTypedef = function(name) {
	$s.push("Create::treatAsTypedef");
	var $spos = $s.length;
	{
		var $tmp = Lambda.exists(Create.typedefLike,function(el) {
			$s.push("Create::treatAsTypedef@87");
			var $spos = $s.length;
			{
				var $tmp = el == name;
				$s.pop();
				return $tmp;
			}
			$s.pop();
		});
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Create.blacklisted = function(name) {
	$s.push("Create::blacklisted");
	var $spos = $s.length;
	{
		var $tmp = Lambda.exists(Create.class_blacklist,function(b) {
			$s.push("Create::blacklisted@92");
			var $spos = $s.length;
			{
				var $tmp = b == name;
				$s.pop();
				return $tmp;
			}
			$s.pop();
		});
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Create.commentIllegalName = function(name) {
	$s.push("Create::commentIllegalName");
	var $spos = $s.length;
	if(name.indexOf("-") != -1 || Create.keyword(name)) Create.fo.writeString("// ");
	$s.pop();
}
Create.addMissing = function(n) {
	$s.push("Create::addMissing");
	var $spos = $s.length;
	var ns = Reflect.field(Create.api,n), provides = Reflect.field(ns,Create.PROVIDES), missing = (function($this) {
		var $r;
		switch(n) {
		case "dojox":{
			$r = Create.missingDojoX;
		}break;
		case "dojo":{
			$r = Create.missingDojo;
		}break;
		case "dijit":{
			$r = Create.missingDijit;
		}break;
		default:{
			$r = null;
		}break;
		}
		return $r;
	}(this));
	if(provides != null && missing.length > 0) {
		Lambda.iter(missing,function(m) {
			$s.push("Create::addMissing@114");
			var $spos = $s.length;
			provides.push(m);
			$s.pop();
		});
	}
	$s.pop();
}
Create.to = function(p) {
	$s.push("Create::to");
	var $spos = $s.length;
	{
		var $tmp = (Create.apiDir + "/") + p;
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Create.main = function() {
	$s.push("Create::main");
	var $spos = $s.length;
	bdog.Os.mkdir(Create.apiDir);
	Create.all = js.io.File.write("All.hx",false);
	var names = ["dojo","dijit","dojox"];
	Lambda.iter(names,function(el) {
		$s.push("Create::main@134");
		var $spos = $s.length;
		bdog.Os.mkdir((Create.apiDir + "/") + el);
		$s.pop();
	});
	var s = js.io.File.getContent("api.json");
	Create.api = bdog.JSON.decode(s);
	{
		var _g = 0;
		while(_g < names.length) {
			var ns = names[_g];
			++_g;
			if(ns != "dojox") Create.topLevel(ns);
			Create.addMissing(ns);
			Create.nameSpace(Reflect.field(Create.api,ns));
		}
	}
	Create.all.writeString("\nclass All {\n   public static function main() { }\n}");
	Create.all.close();
	$s.pop();
}
Create.topLevel = function(ns) {
	$s.push("Create::topLevel");
	var $spos = $s.length;
	var top = Reflect.field(Create.api,ns), name = ns.substr(0,1).toUpperCase() + ns.substr(1);
	Create.fo = js.io.File.write((Create.apiDir + "/") + (name + ".hx"),true);
	Create.writeTypedefHeader(top,name);
	Create.writeBody(top,false);
	Create.fo.close();
	$s.pop();
}
Create.nameSpace = function(ns) {
	$s.push("Create::nameSpace");
	var $spos = $s.length;
	Create.provides(Reflect.field(ns,Create.PROVIDES));
	$s.pop();
}
Create.lookup = function(path) {
	$s.push("Create::lookup");
	var $spos = $s.length;
	{
		var $tmp = Reflect.field(Create.api,path);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Create.provides = function(prv) {
	$s.push("Create::provides");
	var $spos = $s.length;
	if(prv != null) {
		{
			var _g = 0;
			while(_g < prv.length) {
				var p = prv[_g];
				++_g;
				var actual = Reflect.field(Create.api,p);
				if(actual != null) {
					var asTypedef = Create.treatAsTypedef(actual.location), asClass = Create.treatAsClass(actual.location);
					if((actual.classlike && !Create.blacklisted(actual.location)) || (asTypedef || asClass)) {
						var s = p.split("."), path = s.join("/") + ".hx", dir = s.slice(0,-1);
						bdog.Os.mkdir((Create.apiDir + "/") + dir.join("/"));
						Create.fo = js.io.File.write((Create.apiDir + "/") + path,true);
						js.Lib.println("Writing " + actual.location);
						Create.all.writeString(("import " + actual.location) + ";\n");
						Create.fo.writeString(("package " + dir.join(".")) + ";\n\n");
						if(asTypedef) Create.writeTypedefHeader(actual,Create.className(actual));
						else Create.writeClassHeader(actual,Create.className(actual));
						Create.writeBody(actual,true);
						Create.fo.close();
					}
				}
				else null;
			}
		}
	}
	else haxe.Log.trace("bugger",{ fileName : "Create.hx", lineNumber : 207, className : "Create", methodName : "provides"});
	$s.pop();
}
Create.className = function(obj) {
	$s.push("Create::className");
	var $spos = $s.length;
	{
		var $tmp = (obj.location != null?obj.location.split(".").pop():"NONAME!");
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Create.writeClassHeader = function(obj,cn) {
	$s.push("Create::writeClassHeader");
	var $spos = $s.length;
	Create.fo.writeString("extern class " + cn);
	if(obj.superclass != null && !Lambda.exists(Create.class_blacklist,function(b) {
		$s.push("Create::writeClassHeader@223");
		var $spos = $s.length;
		{
			var $tmp = b == obj.superclass;
			$s.pop();
			return $tmp;
		}
		$s.pop();
	})) {
		Create.fo.writeString(" extends " + obj.superclass);
	}
	Create.fo.writeString(" {\n");
	$s.pop();
}
Create.writeTypedefHeader = function(obj,cn) {
	$s.push("Create::writeTypedefHeader");
	var $spos = $s.length;
	Create.fo.writeString(("typedef " + cn) + " = {\n");
	$s.pop();
}
Create.writeBody = function(obj,writePub) {
	$s.push("Create::writeBody");
	var $spos = $s.length;
	if(writePub == null) writePub = true;
	Create.eachMethod(obj,function(m) {
		$s.push("Create::writeBody@237");
		var $spos = $s.length;
		Create.genMethod(obj,m,writePub);
		$s.pop();
	});
	Create.eachProperty(obj,function(p) {
		$s.push("Create::writeBody@240");
		var $spos = $s.length;
		Create.genProp(obj,p,writePub);
		$s.pop();
	});
	Create.fo.writeString("\n}\n");
	$s.pop();
}
Create.getProps = function(o) {
	$s.push("Create::getProps");
	var $spos = $s.length;
	{
		var $tmp = Reflect.field(o,Create.PROPS);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Create.eachProperty = function(obj,cb) {
	$s.push("Create::eachProperty");
	var $spos = $s.length;
	var props = Create.getProps(obj);
	if(props != null) {
		{
			var _g = 0;
			while(_g < props.length) {
				var p = props[_g];
				++_g;
				cb(p);
			}
		}
	}
	$s.pop();
}
Create.eachMethod = function(obj,cb) {
	$s.push("Create::eachMethod");
	var $spos = $s.length;
	var mthds = Reflect.field(obj,Create.METHODS);
	if(mthds != null) {
		{
			var _g = 0;
			while(_g < mthds.length) {
				var m = mthds[_g];
				++_g;
				cb(m);
			}
		}
	}
	$s.pop();
}
Create.priv = function(m) {
	$s.push("Create::priv");
	var $spos = $s.length;
	var f = Reflect.field(m,"private");
	if(f) {
		$s.pop();
		return true;
	}
	if(StringTools.startsWith(m.name,"_")) {
		$s.pop();
		return true;
	}
	{
		$s.pop();
		return false;
	}
	$s.pop();
}
Create.genMethod = function(o,m,writePub) {
	$s.push("Create::genMethod");
	var $spos = $s.length;
	if(writePub == null) writePub = true;
	if(m.name != null) {
		if(!Create.priv(m)) {
			var constructor = m.name == "constructor";
			if(Create.uniqueAttr(o,m,Create.METHODS) || constructor) {
				Create.commentIllegalName(m.name);
				if(writePub) Create.fo.writeString("public ");
				Create.fo.writeString("function ");
				if(constructor) Create.fo.writeString("new(");
				else Create.fo.writeString(m.name + "(");
				Create.genParam(m.parameters);
				var ret = Reflect.field(m,"return-types");
				if(ret == null || constructor) Create.fo.writeString("):Void;\n");
				else Create.fo.writeString(("):" + Create.getType(ret[0].type)) + ";\n");
			}
		}
	}
	$s.pop();
}
Create.genParam = function(prms) {
	$s.push("Create::genParam");
	var $spos = $s.length;
	if(prms != null) {
		var a = new Array();
		{
			var _g = 0;
			while(_g < prms.length) {
				var p = prms[_g];
				++_g;
				var opt = ((p.usage == "optional")?"?":"");
				if(p.name == "callback") a.push((opt + "callBack:") + Create.getType(p.type));
				else a.push(((opt + p.name) + ":") + Create.getType(p.type));
			}
		}
		var s = a.join(",");
		Create.fo.writeString(s);
	}
	$s.pop();
}
Create.getType = function(t) {
	$s.push("Create::getType");
	var $spos = $s.length;
	if(t == null) {
		$s.pop();
		return "Dynamic";
	}
	var tweak = ((StringTools.endsWith(t,":") || StringTools.endsWith(t,"."))?t.substr(0,t.length - 1):t);
	{
		var $tmp = (function($this) {
			var $r;
			switch(tweak.toLowerCase()) {
			case "float":case "number":{
				$r = "Float";
			}break;
			case "string[]":{
				$r = "Array<String>";
			}break;
			case "string":{
				$r = "String";
			}break;
			case "object":case "function":{
				$r = "Dynamic";
			}break;
			case "boolean":case "bool":{
				$r = "Bool";
			}break;
			case "integer":case "int":{
				$r = "Int";
			}break;
			case "array":{
				$r = "Array<Dynamic>";
			}break;
			case "date":{
				$r = "Date";
			}break;
			case "dojo.nodelist":case "nodelist":{
				$r = "dojo.NodeList";
			}break;
			default:{
				$r = "Dynamic";
			}break;
			}
			return $r;
		}(this));
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Create.uniqueAttr = function(obj,attr,type) {
	$s.push("Create::uniqueAttr");
	var $spos = $s.length;
	if(obj.superclass != null) {
		var o = Reflect.field(Create.api,obj.superclass);
		var superAttr = Reflect.field(o,type);
		if(superAttr != null) {
			if(Lambda.exists(superAttr,function(pp) {
				$s.push("Create::uniqueAttr@354");
				var $spos = $s.length;
				{
					var $tmp = pp.name == attr.name;
					$s.pop();
					return $tmp;
				}
				$s.pop();
			})) {
				{
					$s.pop();
					return false;
				}
			}
			else {
				var $tmp = Create.uniqueAttr(o,attr,type);
				$s.pop();
				return $tmp;
			}
		}
		else {
			var $tmp = Create.uniqueAttr(o,attr,type);
			$s.pop();
			return $tmp;
		}
	}
	{
		$s.pop();
		return true;
	}
	$s.pop();
}
Create.genProp = function(obj,p,writePub) {
	$s.push("Create::genProp");
	var $spos = $s.length;
	if(writePub == null) writePub = true;
	if(p != null) {
		if(!Create.priv(p)) {
			if(Lambda.exists(Create.prop_blacklist,function(pp) {
				$s.push("Create::genProp@370");
				var $spos = $s.length;
				{
					var $tmp = pp == p.name;
					$s.pop();
					return $tmp;
				}
				$s.pop();
			})) {
				$s.pop();
				return;
			}
			if(Create.uniqueAttr(obj,p,Create.PROPS)) {
				Create.commentIllegalName(p.name);
				if(writePub) Create.fo.writeString("public ");
				Create.fo.writeString(((("var " + p.name) + ":") + Create.getType(p.type)) + ";\n");
			}
		}
	}
	$s.pop();
}
Create.prototype.__class__ = Create;
js.Lib = function() { }
js.Lib.__name__ = ["js","Lib"];
js.Lib.alert = function(v) {
	$s.push("js.Lib::alert");
	var $spos = $s.length;
	js.Node.sys.print(js.Boot.__string_rec(v,""));
	$s.pop();
}
js.Lib.print = function(v) {
	$s.push("js.Lib::print");
	var $spos = $s.length;
	js.Lib.alert(v);
	$s.pop();
}
js.Lib.println = function(v) {
	$s.push("js.Lib::println");
	var $spos = $s.length;
	js.Node.sys.puts(js.Boot.__string_rec(v,""));
	$s.pop();
}
js.Lib.eval = function(code) {
	$s.push("js.Lib::eval");
	var $spos = $s.length;
	{
		var $tmp = eval(code);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.Lib.setErrorHandler = function(f) {
	$s.push("js.Lib::setErrorHandler");
	var $spos = $s.length;
	js.Lib.onerror = f;
	$s.pop();
}
js.Lib.prototype.__class__ = js.Lib;
bdog.JSON = function() { }
bdog.JSON.__name__ = ["bdog","JSON"];
bdog.JSON.encode = function(o) {
	$s.push("bdog.JSON::encode");
	var $spos = $s.length;
	{
		var $tmp = js.Node.stringify(o);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
bdog.JSON.decode = function(s) {
	$s.push("bdog.JSON::decode");
	var $spos = $s.length;
	{
		var $tmp = js.Node.parse(s);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
bdog.JSON.prototype.__class__ = bdog.JSON;
haxe.io.Eof = function(p) { if( p === $_ ) return; {
	$s.push("haxe.io.Eof::new");
	var $spos = $s.length;
	null;
	$s.pop();
}}
haxe.io.Eof.__name__ = ["haxe","io","Eof"];
haxe.io.Eof.prototype.toString = function() {
	$s.push("haxe.io.Eof::toString");
	var $spos = $s.length;
	{
		$s.pop();
		return "Eof";
	}
	$s.pop();
}
haxe.io.Eof.prototype.__class__ = haxe.io.Eof;
js.Boot = function() { }
js.Boot.__name__ = ["js","Boot"];
js.Boot.__unhtml = function(s) {
	$s.push("js.Boot::__unhtml");
	var $spos = $s.length;
	{
		var $tmp = s.split("&").join("&amp;").split("<").join("&lt;").split(">").join("&gt;");
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.Boot.__trace = function(v,i) {
	$s.push("js.Boot::__trace");
	var $spos = $s.length;
	var msg = (i != null?((i.fileName + ":") + i.lineNumber) + ": ":"");
	msg += js.Boot.__string_rec(v,"");
	js.Node.sys.puts(msg);
	$s.pop();
}
js.Boot.__clear_trace = function() {
	$s.push("js.Boot::__clear_trace");
	var $spos = $s.length;
	var d = document.getElementById("haxe:trace");
	if(d != null) d.innerHTML = "";
	else null;
	$s.pop();
}
js.Boot.__closure = function(o,f) {
	$s.push("js.Boot::__closure");
	var $spos = $s.length;
	var m = o[f];
	if(m == null) {
		$s.pop();
		return null;
	}
	var f1 = function() {
		$s.push("js.Boot::__closure@74");
		var $spos = $s.length;
		{
			var $tmp = m.apply(o,arguments);
			$s.pop();
			return $tmp;
		}
		$s.pop();
	}
	f1.scope = o;
	f1.method = m;
	{
		$s.pop();
		return f1;
	}
	$s.pop();
}
js.Boot.__string_rec = function(o,s) {
	$s.push("js.Boot::__string_rec");
	var $spos = $s.length;
	if(o == null) {
		$s.pop();
		return "null";
	}
	if(s.length >= 5) {
		$s.pop();
		return "<...>";
	}
	var t = typeof(o);
	if(t == "function" && (o.__name__ != null || o.__ename__ != null)) t = "object";
	switch(t) {
	case "object":{
		if(o instanceof Array) {
			if(o.__enum__ != null) {
				if(o.length == 2) {
					var $tmp = o[0];
					$s.pop();
					return $tmp;
				}
				var str = o[0] + "(";
				s += "\t";
				{
					var _g1 = 2, _g = o.length;
					while(_g1 < _g) {
						var i = _g1++;
						if(i != 2) str += "," + js.Boot.__string_rec(o[i],s);
						else str += js.Boot.__string_rec(o[i],s);
					}
				}
				{
					var $tmp = str + ")";
					$s.pop();
					return $tmp;
				}
			}
			var l = o.length;
			var i;
			var str = "[";
			s += "\t";
			{
				var _g = 0;
				while(_g < l) {
					var i1 = _g++;
					str += ((i1 > 0?",":"")) + js.Boot.__string_rec(o[i1],s);
				}
			}
			str += "]";
			{
				$s.pop();
				return str;
			}
		}
		var tostr;
		try {
			tostr = o.toString;
		}
		catch( $e40 ) {
			{
				var e = $e40;
				{
					$e = [];
					while($s.length >= $spos) $e.unshift($s.pop());
					$s.push($e[0]);
					{
						$s.pop();
						return "???";
					}
				}
			}
		}
		if(tostr != null && tostr != Object.toString) {
			var s2 = o.toString();
			if(s2 != "[object Object]") {
				$s.pop();
				return s2;
			}
		}
		var k = null;
		var str = "{\n";
		s += "\t";
		var hasp = (o.hasOwnProperty != null);
		for( var k in o ) { ;
		if(hasp && !o.hasOwnProperty(k)) continue;
		if(k == "prototype" || k == "__class__" || k == "__super__" || k == "__interfaces__") continue;
		if(str.length != 2) str += ", \n";
		str += ((s + k) + " : ") + js.Boot.__string_rec(o[k],s);
		}
		s = s.substring(1);
		str += ("\n" + s) + "}";
		{
			$s.pop();
			return str;
		}
	}break;
	case "function":{
		{
			$s.pop();
			return "<function>";
		}
	}break;
	case "string":{
		{
			$s.pop();
			return o;
		}
	}break;
	default:{
		{
			var $tmp = String(o);
			$s.pop();
			return $tmp;
		}
	}break;
	}
	$s.pop();
}
js.Boot.__interfLoop = function(cc,cl) {
	$s.push("js.Boot::__interfLoop");
	var $spos = $s.length;
	if(cc == null) {
		$s.pop();
		return false;
	}
	if(cc == cl) {
		$s.pop();
		return true;
	}
	var intf = cc.__interfaces__;
	if(intf != null) {
		var _g1 = 0, _g = intf.length;
		while(_g1 < _g) {
			var i = _g1++;
			var i1 = intf[i];
			if(i1 == cl || js.Boot.__interfLoop(i1,cl)) {
				$s.pop();
				return true;
			}
		}
	}
	{
		var $tmp = js.Boot.__interfLoop(cc.__super__,cl);
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
js.Boot.__instanceof = function(o,cl) {
	$s.push("js.Boot::__instanceof");
	var $spos = $s.length;
	try {
		if(o instanceof cl) {
			if(cl == Array) {
				var $tmp = (o.__enum__ == null);
				$s.pop();
				return $tmp;
			}
			{
				$s.pop();
				return true;
			}
		}
		if(js.Boot.__interfLoop(o.__class__,cl)) {
			$s.pop();
			return true;
		}
	}
	catch( $e41 ) {
		{
			var e = $e41;
			{
				$e = [];
				while($s.length >= $spos) $e.unshift($s.pop());
				$s.push($e[0]);
				if(cl == null) {
					$s.pop();
					return false;
				}
			}
		}
	}
	switch(cl) {
	case Int:{
		{
			var $tmp = Math.ceil(o%2147483648.0) === o;
			$s.pop();
			return $tmp;
		}
	}break;
	case Float:{
		{
			var $tmp = typeof(o) == "number";
			$s.pop();
			return $tmp;
		}
	}break;
	case Bool:{
		{
			var $tmp = o === true || o === false;
			$s.pop();
			return $tmp;
		}
	}break;
	case String:{
		{
			var $tmp = typeof(o) == "string";
			$s.pop();
			return $tmp;
		}
	}break;
	case Dynamic:{
		{
			$s.pop();
			return true;
		}
	}break;
	default:{
		if(o == null) {
			$s.pop();
			return false;
		}
		{
			var $tmp = o.__enum__ == cl || (cl == Class && o.__name__ != null) || (cl == Enum && o.__ename__ != null);
			$s.pop();
			return $tmp;
		}
	}break;
	}
	$s.pop();
}
js.Boot.__init = function() {
	$s.push("js.Boot::__init");
	var $spos = $s.length;
	Array.prototype.copy = Array.prototype.slice;
	Array.prototype.insert = function(i,x) {
		$s.push("js.Boot::__init@214");
		var $spos = $s.length;
		this.splice(i,0,x);
		$s.pop();
	}
	Array.prototype.remove = (Array.prototype.indexOf?function(obj) {
		$s.push("js.Boot::__init@217");
		var $spos = $s.length;
		var idx = this.indexOf(obj);
		if(idx == -1) {
			$s.pop();
			return false;
		}
		this.splice(idx,1);
		{
			$s.pop();
			return true;
		}
		$s.pop();
	}:function(obj) {
		$s.push("js.Boot::__init@222");
		var $spos = $s.length;
		var i = 0;
		var l = this.length;
		while(i < l) {
			if(this[i] == obj) {
				this.splice(i,1);
				{
					$s.pop();
					return true;
				}
			}
			i++;
		}
		{
			$s.pop();
			return false;
		}
		$s.pop();
	});
	Array.prototype.iterator = function() {
		$s.push("js.Boot::__init@234");
		var $spos = $s.length;
		{
			var $tmp = { cur : 0, arr : this, hasNext : function() {
				$s.push("js.Boot::__init@234@238");
				var $spos = $s.length;
				{
					var $tmp = this.cur < this.arr.length;
					$s.pop();
					return $tmp;
				}
				$s.pop();
			}, next : function() {
				$s.push("js.Boot::__init@234@241");
				var $spos = $s.length;
				{
					var $tmp = this.arr[this.cur++];
					$s.pop();
					return $tmp;
				}
				$s.pop();
			}}
			$s.pop();
			return $tmp;
		}
		$s.pop();
	}
	var cca = String.prototype.charCodeAt;
	String.prototype.cca = cca;
	String.prototype.charCodeAt = function(i) {
		$s.push("js.Boot::__init@248");
		var $spos = $s.length;
		var x = cca.call(this,i);
		if(isNaN(x)) {
			$s.pop();
			return null;
		}
		{
			$s.pop();
			return x;
		}
		$s.pop();
	}
	var oldsub = String.prototype.substr;
	String.prototype.substr = function(pos,len) {
		$s.push("js.Boot::__init@255");
		var $spos = $s.length;
		if(pos != null && pos != 0 && len != null && len < 0) {
			$s.pop();
			return "";
		}
		if(len == null) len = this.length;
		if(pos < 0) {
			pos = this.length + pos;
			if(pos < 0) pos = 0;
		}
		else if(len < 0) {
			len = (this.length + len) - pos;
		}
		{
			var $tmp = oldsub.apply(this,[pos,len]);
			$s.pop();
			return $tmp;
		}
		$s.pop();
	}
	$closure = js.Boot.__closure;
	$s.pop();
}
js.Boot.prototype.__class__ = js.Boot;
Hash = function(p) { if( p === $_ ) return; {
	$s.push("Hash::new");
	var $spos = $s.length;
	this.h = {}
	if(this.h.__proto__ != null) {
		this.h.__proto__ = null;
		delete(this.h.__proto__);
	}
	else null;
	$s.pop();
}}
Hash.__name__ = ["Hash"];
Hash.prototype.exists = function(key) {
	$s.push("Hash::exists");
	var $spos = $s.length;
	try {
		key = "$" + key;
		{
			var $tmp = this.hasOwnProperty.call(this.h,key);
			$s.pop();
			return $tmp;
		}
	}
	catch( $e42 ) {
		{
			var e = $e42;
			{
				$e = [];
				while($s.length >= $spos) $e.unshift($s.pop());
				$s.push($e[0]);
				
				for(var i in this.h)
					if( i == key ) return true;
			;
				{
					$s.pop();
					return false;
				}
			}
		}
	}
	$s.pop();
}
Hash.prototype.get = function(key) {
	$s.push("Hash::get");
	var $spos = $s.length;
	{
		var $tmp = this.h["$" + key];
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Hash.prototype.h = null;
Hash.prototype.iterator = function() {
	$s.push("Hash::iterator");
	var $spos = $s.length;
	{
		var $tmp = { ref : this.h, it : this.keys(), hasNext : function() {
			$s.push("Hash::iterator@214");
			var $spos = $s.length;
			{
				var $tmp = this.it.hasNext();
				$s.pop();
				return $tmp;
			}
			$s.pop();
		}, next : function() {
			$s.push("Hash::iterator@215");
			var $spos = $s.length;
			var i = this.it.next();
			{
				var $tmp = this.ref["$" + i];
				$s.pop();
				return $tmp;
			}
			$s.pop();
		}}
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Hash.prototype.keys = function() {
	$s.push("Hash::keys");
	var $spos = $s.length;
	var a = new Array();
	
			for(var i in this.h)
				a.push(i.substr(1));
		;
	{
		var $tmp = a.iterator();
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Hash.prototype.remove = function(key) {
	$s.push("Hash::remove");
	var $spos = $s.length;
	if(!this.exists(key)) {
		$s.pop();
		return false;
	}
	delete(this.h["$" + key]);
	{
		$s.pop();
		return true;
	}
	$s.pop();
}
Hash.prototype.set = function(key,value) {
	$s.push("Hash::set");
	var $spos = $s.length;
	this.h["$" + key] = value;
	$s.pop();
}
Hash.prototype.toString = function() {
	$s.push("Hash::toString");
	var $spos = $s.length;
	var s = new StringBuf();
	s.b[s.b.length] = "{";
	var it = this.keys();
	{ var $it43 = it;
	while( $it43.hasNext() ) { var i = $it43.next();
	{
		s.b[s.b.length] = i;
		s.b[s.b.length] = " => ";
		s.b[s.b.length] = Std.string(this.get(i));
		if(it.hasNext()) s.b[s.b.length] = ", ";
	}
	}}
	s.b[s.b.length] = "}";
	{
		var $tmp = s.b.join("");
		$s.pop();
		return $tmp;
	}
	$s.pop();
}
Hash.prototype.__class__ = Hash;
$Main = function() { }
$Main.__name__ = ["@Main"];
$Main.prototype.__class__ = $Main;
$_ = {}
js.Boot.__res = {}
$s = [];
$e = [];
js.Boot.__init();
{
	js.Node.require = require;
	js.Node.paths = require.paths;
	js.Node.setTimeout = setTimeout;
	js.Node.clearTimeout = clearTimeout;
	js.Node.setInterval = setInterval;
	js.Node.clearInterval = clearInterval;
	js.Node.global = global;
	js.Node.process = process;
	js.Node.sys = js.Node.require("sys");
	js.Node.fs = js.Node.require("fs");
	js.Node.net = js.Node.require("net");
	js.Node.http = js.Node.require("http");
	js.Node.__filename = __filename;
	js.Node.__dirname = __dirname;
	js.Node.module = module;
	js.Node.stringify = JSON.stringify;
	js.Node.parse = JSON.parse;
	js.Node.path = js.Node.require("path");
	js.Node.url = js.Node.require("url");
	js.Node.queryString = js.Node.require("querystring");
	js.Node.console = console;
}
{
	bdog.Os.separator = ((js.Sys.systemName() == "Windows")?"\\":"/");
}
{
	var d = Date;
	d.now = function() {
		$s.push("@Main::new@125");
		var $spos = $s.length;
		{
			var $tmp = new Date();
			$s.pop();
			return $tmp;
		}
		$s.pop();
	}
	d.fromTime = function(t) {
		$s.push("@Main::new@128");
		var $spos = $s.length;
		var d1 = new Date();
		d1["setTime"](t);
		{
			$s.pop();
			return d1;
		}
		$s.pop();
	}
	d.fromString = function(s) {
		$s.push("@Main::new@137");
		var $spos = $s.length;
		switch(s.length) {
		case 8:{
			var k = s.split(":");
			var d1 = new Date();
			d1["setTime"](0);
			d1["setUTCHours"](k[0]);
			d1["setUTCMinutes"](k[1]);
			d1["setUTCSeconds"](k[2]);
			{
				$s.pop();
				return d1;
			}
		}break;
		case 10:{
			var k = s.split("-");
			{
				var $tmp = new Date(k[0],k[1] - 1,k[2],0,0,0);
				$s.pop();
				return $tmp;
			}
		}break;
		case 19:{
			var k = s.split(" ");
			var y = k[0].split("-");
			var t = k[1].split(":");
			{
				var $tmp = new Date(y[0],y[1] - 1,y[2],t[0],t[1],t[2]);
				$s.pop();
				return $tmp;
			}
		}break;
		default:{
			throw "Invalid date format : " + s;
		}break;
		}
		$s.pop();
	}
	d.prototype["toString"] = function() {
		$s.push("@Main::new@166");
		var $spos = $s.length;
		var date = this;
		var m = date.getMonth() + 1;
		var d1 = date.getDate();
		var h = date.getHours();
		var mi = date.getMinutes();
		var s = date.getSeconds();
		{
			var $tmp = (((((((((date.getFullYear() + "-") + ((m < 10?"0" + m:"" + m))) + "-") + ((d1 < 10?"0" + d1:"" + d1))) + " ") + ((h < 10?"0" + h:"" + h))) + ":") + ((mi < 10?"0" + mi:"" + mi))) + ":") + ((s < 10?"0" + s:"" + s));
			$s.pop();
			return $tmp;
		}
		$s.pop();
	}
	d.prototype.__class__ = d;
	d.__name__ = ["Date"];
}
{
	String.prototype.__class__ = String;
	String.__name__ = ["String"];
	Array.prototype.__class__ = Array;
	Array.__name__ = ["Array"];
	Int = { __name__ : ["Int"]}
	Dynamic = { __name__ : ["Dynamic"]}
	Float = Number;
	Float.__name__ = ["Float"];
	Bool = { __ename__ : ["Bool"]}
	Class = { __name__ : ["Class"]}
	Enum = { }
	Void = { __ename__ : ["Void"]}
}
{
	Math.NaN = Number["NaN"];
	Math.NEGATIVE_INFINITY = Number["NEGATIVE_INFINITY"];
	Math.POSITIVE_INFINITY = Number["POSITIVE_INFINITY"];
	Math.isFinite = function(i) {
		$s.push("@Main::new@73");
		var $spos = $s.length;
		{
			var $tmp = isFinite(i);
			$s.pop();
			return $tmp;
		}
		$s.pop();
	}
	Math.isNaN = function(i) {
		$s.push("@Main::new@85");
		var $spos = $s.length;
		{
			var $tmp = isNaN(i);
			$s.pop();
			return $tmp;
		}
		$s.pop();
	}
	Math.__name__ = ["Math"];
}
{
	onerror = function(msg,url,line) {
		var stack = $s.copy();
		var f = js.Lib.onerror;
		$s.splice(0,$s.length);
		if( f == null ) {
			var i = stack.length;
			var s = "";
			while( --i >= 0 )
				s += "Called from "+stack[i]+"\n";
			alert(msg+"\n\n"+s);
			return false;
		}
		return f(msg,stack);
	}
}
js.Node.UTF8 = "utf8";
js.Node.ASCII = "ascii";
js.Node.BINARY = "binary";
js.Node.EVENT_EVENTEMITTER_NEWLISTENER = "newListener";
js.Node.EVENT_EVENTEMITTER_ERROR = "error";
js.Node.EVENT_STREAM_DATA = "data";
js.Node.EVENT_STREAM_END = "end";
js.Node.EVENT_STREAM_ERROR = "error";
js.Node.EVENT_STREAM_CLOSE = "close";
js.Node.EVENT_STREAM_DRAIN = "drain";
js.Node.EVENT_STREAM_CONNECT = "connect";
js.Node.EVENT_STREAM_SECURE = "secure";
js.Node.EVENT_STREAM_TIMEOUT = "timeout";
js.Node.EVENT_PROCESS_EXIT = "exit";
js.Node.EVENT_PROCESS_UNCAUGHTEXCEPTION = "uncaughtException";
js.Node.EVENT_PROCESS_SIGINT = "SIGINT";
js.Node.EVENT_PROCESS_SIGUSR1 = "SIGUSR1";
js.Node.EVENT_CHILDPROCESS_EXIT = "exit";
js.Node.EVENT_HTTPSERVER_REQUEST = "request";
js.Node.EVENT_HTTPSERVER_CONNECTION = "connection";
js.Node.EVENT_HTTPSERVER_CLOSE = "close";
js.Node.EVENT_HTTPSERVER_UPGRADE = "upgrade";
js.Node.EVENT_HTTPSERVER_CLIENTERROR = "clientError";
js.Node.EVENT_HTTPSERVERREQUEST_DATA = "data";
js.Node.EVENT_HTTPSERVERREQUEST_END = "end";
js.Node.EVENT_CLIENTREQUEST_RESPONSE = "response";
js.Node.EVENT_CLIENTRESPONSE_DATA = "data";
js.Node.EVENT_CLIENTRESPONSE_END = "end";
js.Node.EVENT_NETSERVER_CONNECTION = "connection";
js.Node.EVENT_NETSERVER_CLOSE = "close";
js.Node.FILE_READ = "r";
js.Node.FILE_READ_APPEND = "r+";
js.Node.FILE_WRITE = "w";
js.Node.FILE_WRITE_APPEND = "w+";
js.Node.FILE_READWRITE = "a";
js.Node.FILE_READWRITE_APPEND = "a+";
haxe.Template.splitter = new EReg("(::[A-Za-z0-9_ ()&|!+=/><*.\"-]+::|\\$\\$([A-Za-z0-9_-]+)\\()","");
haxe.Template.expr_splitter = new EReg("(\\(|\\)|[ \\r\\n\\t]*\"[^\"]*\"[ \\r\\n\\t]*|[!+=/><*.&|-]+)","");
haxe.Template.expr_trim = new EReg("^[ ]*([^ ]+)[ ]*$","");
haxe.Template.expr_int = new EReg("^[0-9]+$","");
haxe.Template.expr_float = new EReg("^([+-]?)(?=\\d|,\\d)\\d*(,\\d*)?([Ee]([+-]?\\d+))?$","");
haxe.Template.globals = { }
Create.apiDir = "dojoApi";
Create.METHODS = "methods";
Create.PROPS = "properties";
Create.PROVIDES = "provides";
Create.keywords = ["class","callback"];
Create.prop_blacklist = ["regExpGen","serialize"];
Create.class_blacklist = ["dojo.data.util.simpleFetch","dijit._MenuBase","dijit.form._FormValueWidget","dijit.layout._Splitter","dijit._Widget"];
Create.missingDojo = ["dojo.NodeList","dojo.Deferred"];
Create.missingDojoX = ["dojox.widget._CalendarBase","dojox.widget.gauge.AnalogLineIndicator","dojox.data.GoogleSearchStore","dojox.widget.gauge._Indicator","dojox.widget.gauge.BarLineIndicator","dojox.wire.ml.Action","dojox.wire.ml.RestHandler","dojox.wire.ml.ChildWire"];
Create.missingDijit = [];
Create.classLike = ["dojo.Deferred"];
Create.typedefLike = ["dojo.NodeList"];
js.Lib.onerror = null;
$Main.init = Create.main();
