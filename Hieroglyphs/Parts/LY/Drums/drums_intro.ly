duIntro = \drummode {
	\override BreathingSign.X-offset = #3
	\override BreathingSign.Y-offset = #3
	
	\repeat percent 4 { hhc4 } |
	\startFuture
	\repeat unfold 4 { hhc4 } | \breathe
	\repeat unfold 4 { hhc4 }
	\endFuture
	hhc4 hhc4 hhc4:16 hhc16 hhc16 hhc16 hhho16 |
	\repeat percent 3 { hhc4 } hhc8 hhc8  |
	hhc8 hhc8 cyms8 cymc8 cymr8 hhc8 cymr8 hhho8 |
	cymc8 hhc8:16 \repeat percent 3 { hhc4 } |
	hhc4 hhc4 hhc4:16 hhc16 hhc16 hhc16 hhho16 |
	\repeat percent 3 { hhc4 } hhc8 hhc8 |
	hhho8 hhho8-+ sn8 sn8 tomfh8 tomml8 toml8 tomfh8 |
}

ddIntro = \drummode {
	s1*2 |
	s1 |
	s2 bd4 bd4 |
	bd4 s4 s2 |
	s1 |
	bd4 s4 s2 |
	s2 bd4 bd4 |
	bd4 s4 s2 |
	s1 |	
}