package com.hendrix.mirror
{
	import com.hendrix.mirror.commands.accounts.Accounts;
	import com.hendrix.mirror.commands.attachments.Attachments;
	import com.hendrix.mirror.commands.contacts.Contacts;
	import com.hendrix.mirror.commands.locations.Locations;
	import com.hendrix.mirror.commands.settings.Settings;
	import com.hendrix.mirror.commands.subscriptions.Subscriptions;
	import com.hendrix.mirror.commands.timeline.Timeline;

	public class Mirror
	{
		private var _timeline:			Timeline 			= null;
		private var _accounts:			Accounts 			= null;
		private var _attachments:		Attachments 	= null;
		private var _contacts:			Contacts 			= null;
		private var _locations:			Locations 		= null;
		private var _settings:		 	Settings 			= null;
		private var _subscriptions:	Subscriptions = null;
		
		private var _oauthToken:		String 				= "ya29.6wAULBmly93jHlDhVVFxdPW6TO9dentQ92bPzNAdW78mQZvqwIEpzzPtq1JxTI92FVq7QPRJZEOdUw";
		
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
		
		public function get timeline():Timeline
		{
			return _timeline;
		}

		public function get accounts():Accounts
		{
			return _accounts;
		}

		public function get attachments():Attachments
		{
			return _attachments;
		}

		public function get contacts():Contacts
		{
			return _contacts;
		}

		public function get locations():Locations
		{
			return _locations;
		}

		public function get settings():Settings
		{
			return _settings;
		}

		public function get subscriptions():Subscriptions
		{
			return _subscriptions;
		}

		public function get oauthToken():String	{	return _oauthToken;	}
		public function set oauthToken(value:String):void
		{
			_oauthToken = value;
		}

	}
	
}