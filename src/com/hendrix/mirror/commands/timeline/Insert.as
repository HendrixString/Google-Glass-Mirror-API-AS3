package com.hendrix.mirror.commands.timeline
{
	import com.hendrix.http.Request;
	import com.hendrix.http.RequestBody;
	import com.hendrix.http.builders.MultiPartBuilder;
	import com.hendrix.http.builders.RequestBuilder;
	import com.hendrix.mirror.commands.MirrorRequest;
	import com.hendrix.mirror.config.SConfig;
	import com.hendrix.mirror.resources.timeline.TimelineItem;
	
	import flash.utils.ByteArray;
	
	public class Insert extends MirrorRequest
	{
		static public const media:String = "media";
		static public const multipart :String = "multipart";
		static public const resumable :String = "resumable";
		
		private var _uploadType:String = multipart;
		
		private var _item:TimelineItem = null;
		private var _image:ByteArray = null;
		
		/**
		 * Inserts a new item into the timeline 
		 * @param item
		 * @param image
		 * 
		 */
		public function Insert(item:TimelineItem, image:ByteArray = null)
		{
			super();
			
			_item = item;
			_image = image;
		}
		
		override public function execute($onComplete:Function=null, $onError:Function=null):void
		{
			var json_timeline:	String 				= JSON.stringify(_item);
			
			var body:						RequestBody 	= null;
			var request:				Request 			= null;
			
			if(_image == null) {
				body 		= RequestBody.create(json_timeline, "application/json");
				
				request = new RequestBuilder(this).url(SConfig.HOST + "/mirror/v1/timeline").addQuery("access_token", _oauthToken).POST(body).build();
			}
			else {
				body 		= new MultiPartBuilder().addPart(RequestBody.create(json_timeline),"Content-Type: application/json; charset=UTF-8")
					.addPart(RequestBody.create(_image),"Content-Type: image/jpeg\nContent-Transfer-Encoding: binary").build();
				
				request = new RequestBuilder(this).addHeader("Cache-Control", "no-cache")
					.url(SConfig.HOST + "/upload/mirror/v1/timeline").addQuery("access_token", _oauthToken).addQuery("uploadType", _uploadType)
					.POST(body)
					.build();
			}
			
			super.execute($onComplete, $onError);
		}
		
		public function getUploadType(): String {return _uploadType;}
		public function setUploadType(uploadType:String):Insert
		{
			_uploadType = uploadType;
			
			return this;
		}
		
		
	}
	
}