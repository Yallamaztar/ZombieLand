#include maps\mp\gametypes\_hud_util;

overflowfix()
{
	level waittill( "connected", player );
	level.stringtable = [];
	level.textelementtable = [];
	textanchor = createserverfontstring( "default", 1 );
	textanchor setelementtext( "Anchor" );
	textanchor.alpha = 0;
	if( getdvar( "g_gametype" ) == "hctdm" || getdvar( "g_gametype" ) == "tdm" )
	{
		limit = 54;
	}
	if( getdvar( "g_gametype" ) == "hcdm" || getdvar( "g_gametype" ) == "dm" )
	{
		limit = 54;
	}
	if( getdvar( "g_gametype" ) == "hcdom" || getdvar( "g_gametype" ) == "dom" )
	{
		limit = 38;
	}
	if( getdvar( "g_gametype" ) == "hcdem" || getdvar( "g_gametype" ) == "dem" )
	{
		limit = 41;
	}
	if( getdvar( "g_gametype" ) == "hcconf" || getdvar( "g_gametype" ) == "conf" )
	{
		limit = 53;
	}
	if( getdvar( "g_gametype" ) == "hckoth" || getdvar( "g_gametype" ) == "koth" )
	{
		limit = 41;
	}
	if( getdvar( "g_gametype" ) == "hchq" || getdvar( "g_gametype" ) == "hq" )
	{
		limit = 43;
	}
	if( getdvar( "g_gametype" ) == "hcctf" || getdvar( "g_gametype" ) == "ctf" )
	{
		limit = 32;
	}
	if( getdvar( "g_gametype" ) == "hcsd" || getdvar( "g_gametype" ) == "sd" )
	{
		limit = 38;
	}
	if( getdvar( "g_gametype" ) == "hconeflag" || getdvar( "g_gametype" ) == "oneflag" )
	{
		limit = 25;
	}
	if( getdvar( "g_gametype" ) == "gun" )
	{
		limit = 48;
	}
	if( getdvar( "g_gametype" ) == "oic" )
	{
		limit = 51;
	}
	if( getdvar( "g_gametype" ) == "shrp" )
	{
		limit = 48;
	}
	if( getdvar( "g_gametype" ) == "sas" )
	{
		limit = 50;
	}
	if( IsDefined( level.stringoptimization ) )
	{
		limit = limit + 172;
	}
	while( !(level.gameended) )
	{
		if( !(IsDefined( textanchor2 )) && level.stringtable.size >= 100 )
		{
			textanchor2 = createserverfontstring( "default", 1 );
			textanchor2 setelementtext( "Anchor2" );
			textanchor2.alpha = 0;
		}
		if( level.stringtable.size >= limit )
		{
			if( IsDefined( textanchor2 ) )
			{
				textanchor2 clearalltextafterhudelem();
				textanchor2 destroyelement();
			}
			textanchor clearalltextafterhudelem();
			level.stringtable = [];
			foreach( textelement in level.textelementtable )
			{
				if( !(IsDefined( self.label )) )
				{
					textelement setelementtext( textelement.text );
				}
				else
				{
					textelement setelementvaluetext( textelement.text );
				}
			}
		}
		wait 0.01;
	}

}

setelementtext( text )
{
	self settext( text );
	if( self.text != text )
	{
		self.text = text;
	}
	if( !(isinarray( level.stringtable, text )) )
	{
		level.stringtable[level.stringtable.size] = text;
	}
	if( !(isinarray( level.textelementtable, self )) )
	{
		level.textelementtable[level.textelementtable.size] = self;
	}

}

setelementvaluetext( text )
{
	self.label += text;
	if( self.text != text )
	{
		self.text = text;
	}
	if( !(isinarray( level.stringtable, text )) )
	{
		level.stringtable[level.stringtable.size] = text;
	}
	if( !(isinarray( level.textelementtable, self )) )
	{
		level.textelementtable[level.textelementtable.size] = self;
	}

}

destroyelement()
{
	if( isinarray( level.textelementtable, self ) )
	{
		arrayremovevalue( level.textelementtable, self );
	}
	if( IsDefined( self.elemtype ) )
	{
		self.frame destroy();
		self.bar destroy();
		self.barframe destroy();
	}
	self destroy();

}

