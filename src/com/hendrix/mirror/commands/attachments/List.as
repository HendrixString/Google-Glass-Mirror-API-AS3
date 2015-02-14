package com.hendrix.mirror.commands.attachments
{
  import com.hendrix.http.builders.RequestBuilder;
  import com.hendrix.mirror.commands.MirrorRequest;
  import com.hendrix.mirror.config.SConfig;
  import com.hendrix.mirror.resources.attachments.AttachmentsListResponse;
	
  /**
   * Returns a list of attachments for a timeline item 
   * @author Tomer Shalev
   * 
   */
  public class List extends MirrorRequest
  {
    private var _itemId:String = null;
    
    
    /**
     * Returns a list of attachments for a timeline item 
     * @param itemId
     * 
     */
    public function List(itemId:String)
    {
      super();
      
      _itemId = itemId;
    }
		
    override public function execute($onComplete:Function=null, $onError:Function=null):void
    {
      new RequestBuilder(this).GET()
                              .url(SConfig.HOST + "/mirror/v1/timeline/" + _itemId + "/attachments")
                              .addQuery("access_token", _oauthToken)
                              .responseClass(AttachmentsListResponse);
      
      super.execute($onComplete, $onError);
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