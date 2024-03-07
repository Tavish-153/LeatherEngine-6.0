package substates;

import states.TitleState;
import utilities.CoolUtil;
import states.MainMenuState;
import states.MusicBeatState;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.app.Application;
import flash.system.System;

class OutdatedSubState extends MusicBeatState
{
	public static var leftState:Bool = false;

	override function create()
	{
		super.create();

		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		add(bg);

		var ver = "v" + Application.current.meta.get('version');

		var txt:FlxText = new FlxText(0, 0, FlxG.width,
			"DUMBASS! UPDATE UR DARN ENGINE\nYOUR VERSION is "
			+ ver
			+ " THE LASTEST ENGINE VERSION is "
			+ TitleState.version_New
			+ "PRESS ENTER RIGHT NOW!, or ESCAPE TO LEAVEE THE GAME",
			32);
		txt.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt.screenCenter();
		add(txt);
	}

	override function update(elapsed:Float)
	{
		if (controls.ACCEPT)
		{
			CoolUtil.openURL("https://github.com/Tavish-153/LeatherEngine5.0.");
		}

		if (controls.BACK)
		{
                 System.exit(0);
		}

		super.update(elapsed);
	}
}
