package com.hendrix.mirror.commands.timeline
{
  import com.hendrix.http.Request;
  import com.hendrix.http.RequestBody;
  import com.hendrix.http.builders.MultiPartBuilder;
  import com.hendrix.http.builders.RequestBuilder;
  import com.hendrix.http.core.HttpRequestProcess;
  import com.hendrix.mirror.Mirror;
  import com.hendrix.mirror.commands.MirrorCommand;
  import com.hendrix.mirror.config.SConfig;
  import com.hendrix.mirror.resources.timeline.TimelineItem;
  
  import flash.utils.ByteArray;
  
  public class Timeline extends MirrorCommand
  {
		
    public function Timeline(service:Mirror)
    {
      super(service);
    }
		
    /**
     * Inserts a new item into the timeline 
     * @param item
     * @param image
     * @return 
     * 
     */
    public function insert(item:TimelineItem, image:ByteArray = null): Insert
    {
      return new Insert(item, image).setOauthToken(_service.oauthToken) as Insert;
    }
		
    /**
     * Deletes a timeline item 
     * @param id
     * @return 
     * 
     */
    public function deleteItem(id:String):Delete
    {			
      return new Delete(id).setOauthToken(_service.oauthToken) as Delete;
    }
    
    /**
     * Gets a single timeline item by ID 
     * @param id
     * @return 
     * 
     */
    public function get(id:String):Get
    {
      return new Get(id).setOauthToken(_service.oauthToken) as Get;
    }
    
    /**
     * Updates a timeline item in place 
     * @param item
     * @return 
     * 
     */
    public function update(itemId:String, item:TimelineItem, image:ByteArray = null):Update
    {
      return new Update(itemId, item, image).setOauthToken(_service.oauthToken) as Update;
    }
    
    /**
     * Retrieves a list of timeline items for the authenticated user 
     * @return 
     * 
     */
    public function list():List
    {
      return new List().setOauthToken(_service.oauthToken) as List;
    }
		
  }
	
}