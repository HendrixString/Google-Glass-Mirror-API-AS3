package com.hendrix.mirror.commands.attachments
{
  import com.hendrix.http.builders.RequestBuilder;
  import com.hendrix.mirror.commands.MirrorRequest;
  import com.hendrix.mirror.config.SConfig;
  import com.hendrix.mirror.resources.attachments.Attachment;
	
  public class Get extends MirrorRequest
  {
    private var _attachmentId:  String = null;
    private var _itemId:        String = null;
		

    /**
     * Retrieves an attachment on a timeline item by item ID and attachment ID 
     * @param itemId
     * @param attachmentId
     * 
     */
    public function Get(itemId:String, attachmentId:String)
    {
      super();
    
      _itemId       = itemId;
      _attachmentId = attachmentId;
    }
		
    override public function execute($onComplete:Function=null, $onError:Function=null):void
    {
      new RequestBuilder(this).GET()
                              .url(SConfig.HOST + "/mirror/v1/timeline/" + _itemId + "/attachments/" + _attachmentId)
                              .addQuery("access_token", _oauthToken)
                              .responseClass(Attachment);
      
      super.execute($onComplete, $onError);
    }
		
    /**
     * The ID of the attachment.
     */ 
    public function getAttachmentId():String
    {
      return _attachmentId;
    }
		
    /**
     * The ID of the attachment.
     */ 
    public function setAttachmentId(value:String):void
    {
      _attachmentId = value;
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
    public function setItemId(value:String):void
    {
      _itemId = value;
    }

  }
	
}