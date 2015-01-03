package com.hendrix.mirror.commands.locations
{
  import com.hendrix.mirror.Mirror;
  import com.hendrix.mirror.commands.MirrorCommand;
  
  public class Locations extends MirrorCommand
  {
    public function Locations(service:Mirror)
    {
      super(service);
    }
		
    /**
     * Gets a single location by ID 
     * @param id
     * @return 
     * 
     */
    public function get(id:String):Get
    {
      return new Get(id).setOauthToken(_service.oauthToken) as Get;
    }
		
    /**
     * Retrieves a list of locations for the user 
     * @param id
     * @return 
     * 
     */
    public function list(id:String):List
    {
      return new List().setOauthToken(_service.oauthToken) as List;
    }
		
  }
  
}