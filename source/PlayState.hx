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
		tvClass.setStateVariable('classState', 'stringTest', "mmmm");

		trace('state:value');
		trace(Textvar.getStateVariable('state', 'value'));
		trace(Type.typeof(Textvar.getStateVariable('state', 'value')));
		trace('classState:value');
		trace(tvClass.getStateVariable('classState', 'value'));
		trace(Type.typeof(tvClass.getStateVariable('classState', 'value')));
		trace('classState:stringTest');
		trace(tvClass.getStateVariable('classState', 'stringTest'));
		trace(Type.typeof(tvClass.getStateVariable('classState', 'stringTest')));

		Textvar.parseAllStateOverwrites('test01');
		trace('state:value');
		trace(Textvar.getStateVariable('state', 'value'));
		trace(Type.typeof(Textvar.getStateVariable('state', 'value')));
		trace('classState:value');
		trace(tvClass.getStateVariable('classState', 'value'));
		trace(Type.typeof(tvClass.getStateVariable('classState', 'value')));
		trace('classState:stringTest');
		trace(tvClass.getStateVariable('classState', 'stringTest'));
		trace(Type.typeof(tvClass.getStateVariable('classState', 'stringTest')));
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
