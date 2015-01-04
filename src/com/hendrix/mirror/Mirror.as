package com.hendrix.mirror
{
  import com.hendrix.mirror.commands.accounts.Accounts;
  import com.hendrix.mirror.commands.attachments.Attachments;
  import com.hendrix.mirror.commands.contacts.Contacts;
  import com.hendrix.mirror.commands.locations.Locations;
  import com.hendrix.mirror.commands.settings.Settings;
  import com.hendrix.mirror.commands.subscriptions.Subscriptions;
  import com.hendrix.mirror.commands.timeline.Timeline;
  
  /**
   * Service definition for Mirror (v1).<br>
   * API for interacting with Glass users via the timeline.<br>
   * For more information about this service, see the API Documentation:<br>
   * <code>https://developers.google.com/glass/</code>
   * 
   * @author Tomer Shalev
   */
  public class Mirror
  {
    private var _timeline:      Timeline      = null;
    private var _accounts:      Accounts      = null;
    private var _attachments:   Attachments   = null;
    private var _contacts:      Contacts      = null;
    private var _locations:     Locations     = null;
    private var _settings:      Settings      = null;
    private var _subscriptions: Subscriptions = null;
    
    private var _oauthToken:    String        = "ya29.7QDjw9tfcqRjplXQwojAm8OPRp-59m-q8EAr2tx1F__4TEi_7VjpYJa2C68grT8oEJ_msPesNshWLg";
    
    /**
     * Service definition for Mirror (v1).<br>
     * API for interacting with Glass users via the timeline.<br>
     * For more information about this service, see the API Documentation:<br>
     * <code>https://developers.google.com/glass/</code>
     */
    public function Mirror()
    {
      _timeline      = new Timeline(this);
      _accounts      = new Accounts(this);
      _attachments   = new Attachments(this);
      _contacts      = new Contacts(this);
      _locations     = new Locations(this);
      _settings      = new Settings(this);
      _subscriptions = new Subscriptions(this);
    }
    
    /**
     * <br>
     * An accessor for creating requests from the Timeline collection.
     * The typical use is:
     * <code><br>
     * <br>var mirror: Mirror = new Mirror(...);
     * <br>var request: Mirror.Timeline.List  = mirror.timeline().list(parameters ...)
     */
    public function get timeline():Timeline
    {
      return _timeline;
    }
    
    /**
     * <br>
     * An accessor for creating requests from the Accounts collection.
     * The typical use is:
     * <code><br>
     * <br>var mirror: Mirror = new Mirror(...);
     * <br>var request: Mirror.Accounts.List  = mirror.accounts().list(parameters ...)
     */
    public function get accounts():Accounts
    {
      return _accounts;
    }
    
    /**
     * <br>
     * An accessor for creating requests from the Attachments collection.
     * The typical use is:
     * <code><br>
     * <br>var mirror: Mirror = new Mirror(...);
     * <br>var request: Mirror.Attachments.List  = mirror.attachments().list(parameters ...)
     */
    public function get attachments():Attachments
    {
      return _attachments;
    }
    
    /**
     * <br>
     * An accessor for creating requests from the Contacts collection.
     * The typical use is:
     * <code><br>
     * <br>var mirror: Mirror = new Mirror(...);
     * <br>var request: Mirror.Contacts.List  = mirror.contacts().list(parameters ...)
     */
    public function get contacts():Contacts
    {
      return _contacts;
    }
    
    /**
     * <br>
     * An accessor for creating requests from the Locations collection.
     * The typical use is:
     * <code><br>
     * <br>var mirror: Mirror = new Mirror(...);
     * <br>var request: Mirror.Locations.List  = mirror.locations().list(parameters ...)
     */
    public function get locations():Locations
    {
      return _locations;
    }
    
    /**
     * <br>
     * An accessor for creating requests from the Settings collection.
     * The typical use is:
     * <code><br>
     * <br>var mirror: Mirror = new Mirror(...);
     * <br>var request: Mirror.Settings.List  = mirror.settings().list(parameters ...)
     */
    public function get settings():Settings
    {
      return _settings;
    }
    
    /**
     * <br>
     * An accessor for creating requests from the Subscriptions collection.
     * The typical use is:
     * <code><br>
     * <br>var mirror: Mirror = new Mirror(...);
     * <br>var request: Mirror.Subscriptions.List  = mirror.subscriptions().list(parameters ...)
     */
    public function get subscriptions():Subscriptions
    {
      return _subscriptions;
    }
    
    /**
     * set <code>OAuth 2</code> Token 
     * @return 
     * 
     */
    public function get oauthToken():             String { return _oauthToken; }
    /**
     * @private 
     */
    public function set oauthToken(value:String): void
    {
      _oauthToken = value;
    }
    
  }
  
}