package com.hendrix.mirror.resources.contacts
{
  public class ContactsItem
  {
    static public const ADD_CAPTION:  String = "ADD_CAPTION";
    static public const INDIVIDUAL:   String = "INDIVIDUAL";
    static public const GROUP:        String = "GROUP";
    
    
    /**
     * The type of resource. This is always mirror#contact. 
     */
    public var kind:String = "mirror#contact";
    
    /**
     * The ID of the application that created this contact. This is populated by the API 
     */
    public var source:String = null;
    
    /**
     * An ID for this contact. This is generated by the application and is treated as an opaque token. 
     */
    public var id:String = null;
    
    /**
     * The name to display for this contact. 
     */
    public var displayName:String = null;
    
    /**
     * Set of image URLs to display for a contact. Most contacts will have a single image, but a "group" contact may include up to 8 image URLs and they will be resized and cropped into a mosaic on the client. 
     */
    public var imageUrls:Vector.<String> = null;
    
    /**
     * The type for this contact. This is used for sorting in UIs. Allowed values are:<li>INDIVIDUAL - Represents a single person. This is the default.<li>GROUP - Represents more than a single person. 
     */
    public var type:String = null;
    
    /**
     * Primary phone number for the contact. This can be a fully-qualified number, with country calling code and area code, or a local number. 
     */
    public var phoneNumber:String = null;
    
    /**
     * Priority for the contact to determine ordering in a list of contacts. Contacts with higher priorities will be shown before ones with lower priorities. 
     */
    public var priority:uint;
    
    /**
     * A list of MIME types that a contact supports. The contact will be shown to the user if any of its acceptTypes matches any of the types of the attachments on the item. If no acceptTypes are given, the contact will be shown for all items. 
     */
    public var acceptTypes:Vector.<String> = null;
    
    /**
     * A list of voice menu commands that a contact can handle. Glass shows up to three contacts for each voice menu command. If there are more than that, the three contacts with the highest priority are shown for that particular command. 
     */
    public var acceptCommands:Vector.<Command> = null;
    
    /**
     * A list of sharing features that a contact can handle. Allowed values are: <li>ADD_CAPTION 
     */
    public var sharingFeatures:Vector.<String> = null;
    
    /**
     * Name of this contact as it should be pronounced. If this contact's name must be spoken as part of a voice disambiguation menu, this name is used as the expected pronunciation. This is useful for contact names with unpronounceable characters or whose display spelling is otherwise not phonetic. 
     */
    public var speakableName:String = null;
    
    public function ContactsItem()
    {
      imageUrls       = new Vector.<String>();
      acceptTypes     = new Vector.<String>();
      acceptCommands  = new Vector.<Command>();
      sharingFeatures = new Vector.<String>();
    }
    
  }
  
}