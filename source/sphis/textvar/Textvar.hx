package sphis.textvar;

import lime.utils.Assets;

class Textvar
{
	public static var states:Map<String, Map<String, Dynamic>> = [];
	public static function parseStateOverwrites(state:String, fileName:String)
	{
		var file = Assets.getText('assets/data/$fileName.txt').split('\n');

		for (line in file)
		{
			var lineSplit = line.split('__');
		}
	}
}
