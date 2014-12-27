package com.hendrix.mirror.resources
{
	public class SettingsItem
	{
		/**
		 * The type of resource. This is always mirror#setting. 
		 */
		public var kind:				String 		= "mirror#setting";
		
		/**
		 * The setting's ID. The following IDs are valid:<li>locale - The key to the user’s language/locale (BCP 47 identifier) that Glassware should use to render localized content.<li>timezone - The key to the user’s current time zone region as defined in the tz database. Example: America/Los_Angeles. 
		 */
		public var id:				String 		= null;
		
		/**
		 * The setting value, as a string. 
		 */
		public var value:				String 		= null;
		
		public function SettingsItem()
		{
		}
	}
}