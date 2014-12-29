package com.hendrix.mirror.commands.locations
{
	import com.hendrix.http.Request;
	import com.hendrix.http.RequestBody;
	import com.hendrix.http.builders.MultiPartBuilder;
	import com.hendrix.http.builders.RequestBuilder;
	import com.hendrix.mirror.commands.MirrorRequest;
	import com.hendrix.mirror.config.SConfig;
	import com.hendrix.mirror.resources.locations.LocationsItem;
	import com.hendrix.mirror.resources.timeline.TimelineItem;
	
	import flash.utils.ByteArray;
	
	public class Get extends MirrorRequest
	{
		private var _id:String = null;

		/**
		 * Gets a single location by ID 
		 * @param id
		 * 
		 */
		public function Get(id:String)
		{
			super();
			
			_id = id;
		}
		
		override public function execute($onComplete:Function=null, $onError:Function=null):void
		{
			new RequestBuilder(this).GET()
				                      .url(SConfig.HOST + "/mirror/v1/locations/" + _id)
															.addQuery("access_token", _oauthToken)
															.responseClass(LocationsItem);
			
			super.execute($onComplete, $onError);
		}
		
		/**
		 * The ID of the location or latest for the last known location.
		 */ 
		public function getId(): String {return _id;}
		/**
		 * The ID of the location or latest for the last known location.
		 */ 
		public function setId(id:String):Get
		{
			_id = id;
			
			return this;
		}

		
	}
	
}