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
			var state = lineSplit[0];
			var variable = lineSplit[1];
			var newValue = lineSplit[2];

			var stateMap = states.get(state);
			stateMap.set(variable, newValue);
		}
	}
}
