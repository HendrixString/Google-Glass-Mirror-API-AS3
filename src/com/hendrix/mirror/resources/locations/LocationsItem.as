package com.hendrix.mirror.resources.locations
{
  import flashx.textLayout.formats.Float;
  
  public class LocationsItem
  {
    /**
     * The type of resource. This is always mirror#location. 
     */
    public var kind:        String    = "mirror#location";
    
    /**
     * The ID of the location. 
     */
    public var id:          String    = null;
    
    /**
     * The name to be displayed. This may be a business name or a user-defined place, such as "Home". 
     */
    public var displayName: String    = null;
    
    /**
     * The full address of the location. 
     */
    public var address:     String    = null;
    
    /**
     * The time at which this location was captured, formatted according to RFC 3339. 
     */
    public var timestamp:   String  = null;
    
    /**
     * The latitude, in degrees. 
     */
    public var latitude:    Number;
    
    /**
     * The longitude, in degrees. 
     */
    public var longitude:   Number;
    
    /**
     * The accuracy of the location fix in meters. 
     */
    public var accuracy:    Number;
    
    public function LocationsItem()
    {
    }
    
  }
  
}