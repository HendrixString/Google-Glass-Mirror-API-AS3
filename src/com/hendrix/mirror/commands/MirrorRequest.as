package com.hendrix.mirror.commands
{
	import com.hendrix.http.Request;
	import com.hendrix.http.core.HttpRequest;
	
	public class MirrorRequest extends Request
	{
		protected var _oauthToken:String = null;
		
		public function MirrorRequest()
		{
			super();
		}
		
		
		public function getOauthToken():String	{	return _oauthToken;		}
		public function setOauthToken(value:String):MirrorRequest
		{
			_oauthToken = value;
			
			return this;
		}

	}
	
}