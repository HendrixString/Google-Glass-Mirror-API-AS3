package com.hendrix.mirror.commands.contacts
{
  import com.hendrix.mirror.commands.MirrorRequest;
  import com.hendrix.mirror.config.SConfig;
  import com.hendrix.mirror.resources.timeline.TimelineItem;
  
  import com.hendrix.http.Request;
  import com.hendrix.http.RequestBody;
  import com.hendrix.http.builders.MultiPartBuilder;
  import com.hendrix.http.builders.RequestBuilder;
  
  import flash.utils.ByteArray;
  
  public class Delete extends MirrorRequest
  {
    private var _id:String = null;
    
    /**
     * Deletes a contact 
     * @param id
     * 
     */
    public function Delete(id:String)
    {
      super();		
    
      _id = id;
    }
    
    override public function execute($onComplete:Function=null, $onError:Function=null):void
    {
      new RequestBuilder(this).DELETE().url(SConfig.HOST + "/mirror/v1/contacts/" + _id).addQuery("access_token", _oauthToken);
      
      super.execute($onComplete, $onError);
    }
		
    /**
     * The ID of the contact
     */ 
    public function getId(): String {return _id;}
    /**
     * The ID of the contact
     */ 
    public function setId(id:String):Delete
    {
      _id = id;
      
      return this;
    }

  }
	
}