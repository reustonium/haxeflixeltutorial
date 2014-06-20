package;

import flixel.effects.FlxSpriteFilter;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import openfl.filters.BitmapFilterQuality;
import openfl.filters.GlowFilter;

/**
 * A FlxState which can be used for the actual gameplay.
 */
class PlayState extends FlxState
{
	private var _player :Player;
	private var _glowFilter:FlxSpriteFilter;
	
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		super.create();

		_player = new Player(20, 20);
		add(_player);
		
		_glowFilter = new FlxSpriteFilter(_player, 100, 100);
		_glowFilter.addFilter(new GlowFilter(0x00ffff));
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		super.update();
	}	
}