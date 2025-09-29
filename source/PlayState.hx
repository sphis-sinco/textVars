package;

import flixel.FlxState;
import sphis.textvar.Parser;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
		Parser.states.set('state', []);
		Parser.states.get('state').set('value', -10);

	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
