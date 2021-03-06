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
package com.kaltura.types
{
	public class KalturaBatchJobStatus
	{
		public static const PENDING : int = 0;
		public static const QUEUED : int = 1;
		public static const PROCESSING : int = 2;
		public static const PROCESSED : int = 3;
		public static const MOVEFILE : int = 4;
		public static const FINISHED : int = 5;
		public static const FAILED : int = 6;
		public static const ABORTED : int = 7;
		public static const ALMOST_DONE : int = 8;
		public static const RETRY : int = 9;
		public static const FATAL : int = 10;
		public static const DONT_PROCESS : int = 11;
	}
}
