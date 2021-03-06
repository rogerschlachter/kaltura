// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platfroms allow them to do with
// text.
//
// Copyright (C) 2006-2011  Kaltura Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// @ignore
// ===================================================================================================
package {
	import com.kaltura.KalturaClient;
	import com.kaltura.commands.session.SessionStart;
	import com.kaltura.config.KalturaConfig;
	import com.kaltura.events.KalturaEvent;
	import com.kaltura.types.KalturaSessionType;
	

	public class KalturaClientSample
	{
		private const API_SECRET = "";
		private const KALTURA_PARTNER_ID = "";
		
		// use Jangaroo main method instead of extending Sprite:
		public static function main():void {
			new KalturaClientSample();
		}

		public function KalturaClientSample()
		{
			if (API_SECRET == "ENTER_YOUR_API_SECRET_KEY" ||
				KALTURA_PARTNER_ID == "ENTER_YOUR_PARTNER_ID") {
				throw (new Error("Please edit the const for the partner id and api secret"));
				return;
			}
			var configuration : KalturaConfig = new KalturaConfig();
			configuration.domain = "localhost"; // needs a proxy from localhost/api_v3 to www.kaltura.com/api_v3
			var kaltura : KalturaClient = new KalturaClient( configuration );	
			var startSession : SessionStart = new SessionStart(API_SECRET, 'testUserName', KalturaSessionType.USER, int(KALTURA_PARTNER_ID));
			startSession.addEventListener(KalturaEvent.COMPLETE, completed);
			startSession.addEventListener(KalturaEvent.FAILED, failed);
			kaltura.post( startSession );
		}
		
		private function completed (event:KalturaEvent):void {
			trace ("Session Started: " + event.success);
			trace (event.data);
		}
		
		private function failed (event:KalturaEvent):void {
			trace ("Session Failed: " + event.error.errorMsg);
		}
	}
}
