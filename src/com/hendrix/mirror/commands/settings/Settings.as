package com.hendrix.mirror.commands.settings
{
  import com.hendrix.mirror.Mirror;
  import com.hendrix.mirror.commands.MirrorCommand;
  
  public class Settings extends MirrorCommand
  {
    public function Settings(service:Mirror)
    {
      super(service);
    }
		
    /**
     * Gets a single setting by ID 
     * @param id
     * @return 
     * 
     */
    public function get(id:String):Get
    {
      return new Get(id).setOauthToken(_service.oauthToken) as Get;
    }
		
  }
  
}