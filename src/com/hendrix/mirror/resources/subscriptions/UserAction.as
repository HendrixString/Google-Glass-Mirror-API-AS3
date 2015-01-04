package com.hendrix.mirror.resources.subscriptions
{
  public class UserAction
  {
    /**
     * SHARE - the user shared an item. 
     */
    static public const SHARE:String = "SHARE";
    
    /**
     * REPLY - the user replied to an item.
     */
    static public const REPLY:String = "REPLY";
    
    /**
     * REPLY_ALL - the user replied to all recipients of an item.
     */
    static public const REPLY_ALL:String = "REPLY_ALL";
    
    /**
     * CUSTOM - the user selected a custom menu item on the timeline item.
     */
    static public const CUSTOM:String = "CUSTOM";
    
    /**
     * DELETE - the user deleted the item.
     */
    static public const DELETE:String = "DELETE";
    
    /**
     * PIN - the user pinned the item.
     */
    static public const PIN:String = "PIN";
    
    /**
     * UNPIN - the user unpinned the item.
     */
    static public const UNPIN:String = "UNPIN";
    
    /**
     * LAUNCH - the user initiated a voice command.
     */
    static public const LAUNCH:String = "LAUNCH";
    
    /**
     * An optional payload for the action. For actions of type CUSTOM, this is the ID of the custom menu item that was selected. 
     */
    public var payload:String = null;
    
    /**
     * The type of action. The value of this can be:<li>SHARE - the user shared an item.<li>REPLY - the user replied to an item.<li>REPLY_ALL - the user replied to all recipients of an item.<li>CUSTOM - the user selected a custom menu item on the timeline item.<li>DELETE - the user deleted the item.<li>PIN - the user pinned the item.<li>UNPIN - the user unpinned the item.<li>LAUNCH - the user initiated a voice command.In the future, additional types may be added. UserActions with unrecognized types should be ignored. 
     */
    public var type:String = null;
    
    public function UserAction()
    {
    }
    
  }
  
}