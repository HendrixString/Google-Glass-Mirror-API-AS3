package com.hendrix.mirror.resources.locations
{
	public class LocationsListResponse
	{
		/**
		 * The type of resource. This is always mirror#locationsList.
		 */
		public var kind:String = "mirror#locationsList";
		
		/**
		 * The list of locations.
		 */
		public var items:Vector.<LocationsItem> = null;

		public function LocationsListResponse()
		{
			items = new Vector.<LocationsItem>();
		}
		
	}
	
}