package;

import flixel.FlxState;
import sphis.textvar.Textvar;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
		Textvar.states.set('state', []);
		Textvar.states.get('state').set('value', -10);

		trace(Textvar.states.get('state').get('value'));
		Textvar.parseAllStateOverwrites('test01');
		trace(Textvar.states.get('state').get('value'));

	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
