package com.hendrix.mirror.resources.subscriptions
{
  public class Notification
  {
    static public const OPERATION_DELETE:       String = "DELETE";
    static public const OPERATION_INSERT:       String = "INSERT";
    static public const OPERATION_MENU_ACTION:  String = "MENU_ACTION";
    static public const OPERATION_UPDATE:       String = "UPDATE";
    
    /**
     * The collection that generated the notification. 
     */
    public var collection:String = null;
    
    /**
     * The ID of the item that generated the notification. 
     */
    public var itemId:String = null;
    
    /**
     * The type of operation that generated the notification. <br>Acceptable values are:<li>"DELETE"<li>"INSERT"<li>"MENU_ACTION"<li>"UPDATE" 
     */
    public var operation:String = null;
    
    /**
     * A list of actions taken by the user that triggered the notification. 
     */
    public var userActions:Vector.<UserAction> = null;
    
    /**
     * The user token provided by the service when it subscribed for notifications. 
     */
    public var userToken:String = null;
    
    /**
     * The secret verify token provided by the service when it subscribed for notifications.
     */
    public var verifyToken:String = null;
    
    public function Notification()
    {
      userActions = new Vector.<UserAction>();
    }
    
  }
  
}