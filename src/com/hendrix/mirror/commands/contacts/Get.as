package com.hendrix.mirror.commands.contacts
{
  import com.hendrix.http.builders.RequestBuilder;
  import com.hendrix.mirror.commands.MirrorRequest;
  import com.hendrix.mirror.config.SConfig;
  import com.hendrix.mirror.resources.contacts.ContactsItem;
  
  public class Get extends MirrorRequest
  {
    private var _id:String = null;
    
    /**
     * Gets a single contact by ID 
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
                              .url(SConfig.HOST + "/mirror/v1/contacts/" + _id)
                              .addQuery("access_token", _oauthToken)
                              .responseClass(ContactsItem);
      
      super.execute($onComplete, $onError);
    }
		
    /**
     * The ID of the contact.
     */ 
    public function getId(): String {return _id;}
    /**
     * The ID of the contact.
     */ 
    public function setId(id:String):Get
    {
      _id = id;
      
      return this;
    }

  }
	
}