package com.hendrix.mirror.commands.locations
{
	import com.hendrix.http.Request;
	import com.hendrix.http.RequestBody;
	import com.hendrix.http.builders.MultiPartBuilder;
	import com.hendrix.http.builders.RequestBuilder;
	import com.hendrix.mirror.commands.MirrorRequest;
	import com.hendrix.mirror.config.SConfig;
	import com.hendrix.mirror.resources.locations.LocationsListResponse;
	import com.hendrix.mirror.resources.timeline.TimelineItem;
	
	import flash.utils.ByteArray;
	
	public class List extends MirrorRequest
	{
		/**
		 * Retrieves a list of locations for the user 
		 */
		public function List()
		{
			super();
			
		}
		
		override public function execute($onComplete:Function=null, $onError:Function=null):void
		{
			new RequestBuilder(this).GET()
				                      .url(SConfig.HOST + "/mirror/v1/locations")
															.addQuery("access_token", _oauthToken)
															.responseClass(LocationsListResponse);
			
			super.execute($onComplete, $onError);
		}
		
		
	}
	
}