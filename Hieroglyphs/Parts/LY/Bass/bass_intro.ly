bassIntro = \relative c {
	\override BreathingSign.X-offset = #3
	\override BreathingSign.Y-offset = #3
	
	R1*2 |
	g8 ([ gis8 ] a4) a4 g8 ([ gis8 ] |
	a8) [ a8 ~ ] a2. |
	\startFuture \breathe
	g8 ([ gis8 ] a4) a4 g8 ([ gis8 ] |
	\endFuture
	a8) [ c8 ~ ] c2. |
	\startFuture \breathe
	g8 ([ gis8 ] a4) a4 g8 ([ gis8 ] |
	a8) [ a8 ~ ] a2. | % 9
	\breathe
	g8 ([ gis8 ] a4) a4 g8 ([ gis8 ] |
	\endFuture
	a8) [ c8 ~ ] c4 c4 c8 [ c8 ] |
	\break
}