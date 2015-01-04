package com.hendrix.mirror.resources.timeline
{
  import com.hendrix.mirror.resources.DateTime;
  
  public class Notification
  {
    static public const LEVEL_DEFAULT:String = "DEFAULT"; 
    
    public var level:         String = LEVEL_DEFAULT;
    public var deliveryTime:  String = null;
    
    public function Notification()
    {
    }
    
  }
  
}