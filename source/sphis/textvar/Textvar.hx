package sphis.textvar;

import lime.utils.Assets;

class Textvar
{
	public static var states:Map<String, Map<String, Dynamic>> = [];
	public static function parseAllStateOverwrites(fileName:String)
	{
		for (state => value in states)
			parseStateOverwrites(state, fileName);
	}

	public static function parseStateOverwrites(targetState:String, fileName:String)
	{
		var file = Assets.getText('assets/data/$fileName.txt').split('\n');

		for (line in file)
		{
			var lineSplit = line.split('__');
			var state = lineSplit[0];
			var variable = lineSplit[1];
			var newValue = lineSplit[2];

			if (file.length > 3)
			{
				for (i in 0...file.length)
				{
					if (i > 2)
						newValue += file[i];
				}
			}

			if (targetState == state)
			{
				var stateMap = states.get(state);
				var type_string = "abcdefghijklmnopqrstuvwxyz`~!@#$%^&*()-=_+[]\\;',/{}|:\"<>? ";
				var is_string:Bool = false;

				for (i in 0...type_string.length)
				{
					var letter = type_string.charAt(i);

					if (StringTools.contains(newValue, letter))
					{
						is_string = true;
						return;
					}
				}

				if (is_string)
					stateMap.set(variable, Std.string(newValue));
				else
				{
					stateMap.set(variable, Std.parseFloat(newValue));
				}
			}
		}
	}
}
