package com.hendrix.mirror.commands
{
	import com.hendrix.mirror.Mirror;

	public class MirrorCommand
	{
		protected var _service:Mirror = null;

		public function MirrorCommand(service:Mirror)
		{
			_service = service;
		}
	}
}