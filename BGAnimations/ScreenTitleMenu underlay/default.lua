local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( "../_main background" )..{
	};
}

if GAMESTATE:GetCoinMode() ~= 'CoinMode_Home' then
	t[#t+1] = Def.ActorFrame {
		LoadActor( "../ScreenLogo background/ddrex2_logo" )..{
			OnCommand=cmd(queuecommand,"Logo");
			LogoCommand=cmd(y,SCREEN_CENTER_Y;x,SCREEN_CENTER_X);
		};
	}
end

if GAMESTATE:GetCoinMode() == 'CoinMode_Home' then
	t[#t+1] = Def.ActorFrame {
		LoadActor( "left.png" )..{
			OnCommand=cmd(x,SCREEN_LEFT+120;y,SCREEN_CENTER_Y;zoomtoheight,SCREEN_HEIGHT);
		};
	}
end

return t