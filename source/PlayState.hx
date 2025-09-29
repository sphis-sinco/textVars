package;

import flixel.FlxState;
import sphis.textvar.Textvar;
import sphis.textvar.TextvarClass;

class PlayState extends FlxState
{
	public var tvClass:TextvarClass = new TextvarClass();

	override public function create()
	{
		super.create();

		Textvar.setStateVariable('state', 'value', -10);
		tvClass.setStateVariable('classState', 'value', -10);

		trace('state:value');
		trace(Textvar.getStateVariable('state', 'value'));
		trace(Type.typeof(Textvar.getStateVariable('state', 'value')));
		trace('classState:value');
		trace(tvClass.getStateVariable('classState', 'value'));
		trace(Type.typeof(tvClass.getStateVariable('classState', 'value')));

		Textvar.parseAllStateOverwrites('test01');
		trace('state:value');
		trace(Textvar.getStateVariable('state', 'value'));
		trace(Type.typeof(Textvar.getStateVariable('state', 'value')));
		trace('classState:value');
		trace(tvClass.getStateVariable('classState', 'value'));
		trace(Type.typeof(tvClass.getStateVariable('classState', 'value')));
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
