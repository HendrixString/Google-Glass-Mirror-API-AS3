package com.hendrix.mirror.commands.contacts
{
  import com.hendrix.http.Request;
  import com.hendrix.http.RequestBody;
  import com.hendrix.http.builders.MultiPartBuilder;
  import com.hendrix.http.builders.RequestBuilder;
  import com.hendrix.mirror.commands.MirrorRequest;
  import com.hendrix.mirror.config.SConfig;
  import com.hendrix.mirror.resources.contacts.ContactsItem;
  
  import flash.utils.ByteArray;
  
  public class Insert extends MirrorRequest
  {
    private var _item:ContactsItem = null;
    
    /**
     * Inserts a new contact 
     * @param item
     * 
     */
    public function Insert(item:ContactsItem)
    {
      super();
      
      _item = item;
    }
		
    override public function execute($onComplete:Function=null, $onError:Function=null):void
    {
      var json:	          String        = JSON.stringify(_item);
      
      var body:           RequestBody   = null;
      var request:        Request       = null;
      
      body                              = RequestBody.create(json, "application/json");
      
      request                           = new RequestBuilder(this).url(SConfig.HOST + "/mirror/v1/contacts").addQuery("access_token", _oauthToken)
                                                                  .POST(body).responseClass(ContactsItem)
                                                                  .build();

      super.execute($onComplete, $onError);
    }
		
  }
	
}