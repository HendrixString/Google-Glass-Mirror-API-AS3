package com.hendrix.mirror.resources.timeline
{
	/**
	 * For CUSTOM items, a list of values controlling the appearance of the menu item in each of its states. A value for the DEFAULT state must be provided. If the PENDING or CONFIRMED states are missing, they will not be shown.
	 *  
	 * @author Hendrix
	 * 
	 */
	public class MenuItemValues
	{
		/**
		 * DEFAULT - Default value shown when displayed in the menuItems list. 
		 */
		static public const DEFAULT:		String = "DEFAULT";
		
		/**
		 * PENDING - Value shown when the menuItem has been selected by the user but can still be cancelled. 
		 */
		static public const PENDING:		String = "PENDING";
		
		/**
		 * CONFIRMED - Value shown when the menuItem has been selected by the user and can no longer be cancelled. 
		 */
		static public const CONFIRMED:	String = "CONFIRMED";

		
		/**
		 * The state that this value applies to. Allowed values are:<li>DEFAULT - Default value shown when displayed in the menuItems list.<li>PENDING - Value shown when the menuItem has been selected by the user but can still be cancelled.<li>CONFIRMED - Value shown when the menuItem has been selected by the user and can no longer be cancelled. 
		 */
		public var state:				String = null;
		/**
		 * The name to display for the menu item. If you specify this property for a built-in menu item, the default contextual voice command for that menu item is not shown. 
		 */
		public var displayName:	String = null;
		
		/**
		 * URL of an icon to display with the menu item. 
		 */
		public var iconUrl:			String = null;

		public function MenuItemValues()
		{
		}
		
	}
	
}