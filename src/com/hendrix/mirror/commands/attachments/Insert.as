package com.hendrix.mirror.commands.attachments
{
	import com.hendrix.http.Request;
	import com.hendrix.http.RequestBody;
	import com.hendrix.http.builders.MultiPartBuilder;
	import com.hendrix.http.builders.RequestBuilder;
	import com.hendrix.mirror.commands.MirrorRequest;
	import com.hendrix.mirror.config.SConfig;
	import com.hendrix.mirror.resources.attachments.Attachment;
	import com.hendrix.mirror.resources.timeline.TimelineItem;
	
	import flash.utils.ByteArray;
	
	public class Insert extends MirrorRequest
	{
		static public const media:String = "media";
		static public const resumable :String = "resumable";
		
		private var _uploadType:String = media;
		private var _itemId:String = null;

		private var _media:ByteArray = null;
		private var _mediaContentType:String = null;
		
		
		/**
		 * Adds a new attachment to a timeline item 
		 * @param media
		 * @param mediaContentType
		 * 
		 */
		public function Insert(itemId:String, media:ByteArray = null, mediaContentType:String = null)
		{
			super();
			
			_media = media;
			_itemId = itemId;
			_mediaContentType = mediaContentType ? mediaContentType : "image/jpeg";
		}
		
		override public function execute($onComplete:Function=null, $onError:Function=null):void
		{
			var body:						RequestBody 	= null;
			var request:				Request 			= null;
			
			body 		= RequestBody.create(_media, _mediaContentType);
			
			request = new RequestBuilder(this).url(SConfig.HOST + "/mirror/v1/timeline" + "/" + _itemId + "/attachments")
				                                .addQuery("access_token", _oauthToken).addQuery("uploadType", _uploadType)
																				.POST(body).responseClass(Attachment)
																				.build();
			
			super.execute($onComplete, $onError);
		}
		
		/**
		 * The type of upload request to the /upload URI
		 */ 
		public function getUploadType(): String {return _uploadType;}
		/**
		 * The type of upload request to the /upload URI. Acceptable values are: media, resumable
		 */ 
		public function setUploadType(uploadType:String):Insert
		{
			_uploadType = uploadType;
			
			return this;
		}

		/**
		 * The ID of the timeline item the attachment belongs to.
		 */ 
		public function getItemId():String
		{
			return _itemId;
		}

		/**
		 * The ID of the timeline item the attachment belongs to.
		 */ 
		public function setItemId(value:String):Insert
		{
			_itemId = value;
			return this;
		}
		
		
	}
	
}