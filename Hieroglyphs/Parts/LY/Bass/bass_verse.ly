bassVerse = \relative c {
	\repeat unfold 2 {
		\repeat unfold 2 {
			g8( [ gis8 ] a4) a4 \xNote e8 [ cis'8( ~ ] | % 12, 16, 20, 24
			cis8 [ d8 dis8 e8 ] c8 [ a8 g8 e8 ]) | % 13, 17, 21, 25
			c'8( [ cis8 ] d4) d4 \xNote a8 [ c8 ~ ] | % 14, 18, 22, 26
			c8( [ cis8 d8) d8 ] a8 [ c8 c8 c8 ] | % 15, 19, 23, 27
			\startFuture \breathe
		} \break 
	} \break
	\endFuture
}