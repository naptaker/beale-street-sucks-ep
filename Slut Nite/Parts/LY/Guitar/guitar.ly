\include "../../../../include/bend.ly"

\include "predefined-guitar-fretboards.ly"
\addChordShape #'powersurf #guitar-tuning #"1-1;3-3;3-4;2-2;x;x;"
\storePredefinedDiagram #default-fret-table
                        \chordmode { bes }
                        #guitar-tuning
                        #'((barre 6 3 6)
                        	 (place-fret 6 6)
													 (place-fret 5 8)
													 (place-fret 4 8)
													 (place-fret 3 7)
													 (mute 2)
													 (mute 1))
\storePredefinedDiagram #default-fret-table
                        \chordmode { a }
                        #guitar-tuning
                        #'((barre 6 3 5)
                        	 (place-fret 6 5)
													 (place-fret 5 7)
													 (place-fret 4 7)
													 (place-fret 3 6)
													 (mute 2)
													 (mute 1))
\storePredefinedDiagram #default-fret-table
                        \chordmode { g }
                        #guitar-tuning
                        #'((barre 6 3 3)
                        	 (place-fret 6 3)
													 (place-fret 5 5)
													 (place-fret 4 5)
													 (place-fret 3 4)
													 (mute 2)
													 (mute 1))
\storePredefinedDiagram #default-fret-table
                        \chordmode { des }
                        #guitar-tuning
                        #'((barre 6 3 9)
                        	 (place-fret 6 9)
													 (place-fret 5 11)
													 (place-fret 4 11)
													 (place-fret 3 10)
													 (mute 2)
													 (mute 1))
\storePredefinedDiagram #default-fret-table
                        \chordmode { aes }
                        #guitar-tuning
                        #'((barre 6 3 4)
                        	 (place-fret 6 4)
													 (place-fret 5 6)
													 (place-fret 4 6)
													 (place-fret 3 5)
													 (mute 2)
													 (mute 1))
\storePredefinedDiagram #default-fret-table
                        \chordmode { f }
                        #guitar-tuning
                        #'((barre 6 3 1)
                        	 (place-fret 6 1)
													 (place-fret 5 3)
													 (place-fret 4 3)
													 (place-fret 3 2)
													 (mute 2)
													 (mute 1))
\storePredefinedDiagram #default-fret-table
                        \chordmode { d }
                        #guitar-tuning
                        #'((barre 6 3 10)
                        	 (place-fret 6 10)
													 (place-fret 5 12)
													 (place-fret 4 12)
													 (place-fret 3 11)
													 (mute 2)
													 (mute 1))
\storePredefinedDiagram #default-fret-table
                        \chordmode { ees }
                        #guitar-tuning
                        #'((barre 6 3 11)
                        	 (place-fret 6 11)
													 (place-fret 5 13)
													 (place-fret 4 13)
													 (place-fret 3 12)
													 (mute 2)
													 (mute 1))
\storePredefinedDiagram #default-fret-table
                        \chordmode { c }
                        #guitar-tuning
                        #'((barre 6 3 8)
                        	 (place-fret 6 8)
													 (place-fret 5 10)
													 (place-fret 4 10)
													 (place-fret 3 9)
													 (mute 2)
													 (mute 1))
\storePredefinedDiagram #default-fret-table
                        \chordmode { ces }
                        #guitar-tuning
                        #'((barre 6 3 5)
                        	 (place-fret 6 7)
													 (place-fret 5 9)
													 (place-fret 4 9)
													 (place-fret 3 8)
													 (mute 2)
													 (mute 1))
\storePredefinedDiagram #default-fret-table
                        \chordmode { e }
                        #guitar-tuning
                        #'((open 6)
													 (place-fret 5 2)
													 (place-fret 4 2)
													 (place-fret 3 1)
													 (mute 2)
													 (mute 1))

gtrHarmony = \chordmode {
	\override FretBoards.FretBoard #'size = #'1.2

}


gtrIntro = \relative c' {
	R1 |
	r2 r4 f4\prall |
}

gtrVerseA = \relative c' {
	r4 <d a' d fis>8 cis( d) ~ <d a' d fis> r <c g' c e> |
	r8 d ~ <d a' d fis> r4 <bes f' bes d>16 <bes f' bes d> <bes f' bes d>8 <c g' c e> |
	r8 d ~ <d a' d fis>8 cis( d ~) <d a' d fis> r <c g' c e> |
	r8 d ~ <d a' d fis> r4 <bes f' bes d>8( <a e' a cis> <aes ees' aes c>) |

	r4 <g d' g b>4 <bes f' bes d>8 <bes f' bes d> f( g8) ~ |
	g8 g ~ <g d' g b> r4 <bes f' bes d>8( <a e' a cis> <aes ees' aes c>) |
	r4 <g d' g b>4 bes8 ~ <bes f' bes d>8 f( g8) ~ |
	g8 g ~ <g d' g b> r <bes f' bes d>16 r8 <a e' a cis>16 r8 <aes ees' aes c>16 r |
	r4 <g d' g b>4 bes8 ~ <bes f' bes d>8 f( g8) ~ |
	g8 g ~ <g d' g b> r4 <bes f' bes d>8( <a e' a cis> <aes ees' aes c>) |
	r4 <g d' g b>4 bes8 ~ <bes f' bes d>8 f( <g d' g b>8 ~ |
	<g d' g b>4) <g d' g b>8 r <bes f' bes d>16 r8 <c g' c e>16 r8 <cis gis' cis eis>8 |
}

gtrVerseB = \relative c' {
	r4 <d a' d fis>8 cis( d ~) <d a' d fis> r <c g' c e> |
	r8 d ~ <d a' d fis> r4 <bes f' bes d>16 <bes f' bes d> <bes f' bes d>8 <c g' c e> |
	r8 d ~ <d a' d fis>8 cis( d ~) <d a' d fis> r <c g' c e> |
	r8 d ~ <d a' d fis> r8 r2 |
	
	<g, d' g b>4 <g d' g b> <bes f' bes d>8 <bes f' bes d> <f c' f a> <g d' g b> ~ |
	<g d' g b>8 <g d' g b> <g d' g b> <g d' g b>  <bes f' bes d> <bes f' bes d>16 <bes f' bes d> <a e' a cis>8 <aes ees' aes c> |
	<g d' g b>4 <g d' g b> <bes f' bes d>8 <bes f' bes d> <f c' f a> <g d' g b> ~ |
	<g d' g b>4 r <bes f' bes d>16 r8 <a e' a cis>16 r8 <aes ees' aes c>16 r |
	r4 <g d' g b> <bes f' bes d>8 <bes f' bes d> <f c' f a> <g d' g b> ~ |
	<g d' g b>8 <g d' g b> <g d' g b> <g d' g b>  <bes f' bes d> <bes f' bes d>16 <bes f' bes d> <a e' a cis>8 <aes ees' aes c> |
	<g d' g b>4 <g d' g b> <bes f' bes d>8 <f c' f a> fis <g d' g b> ~ |
	<g d' g b>4 r <bes f' bes d>16 r8 <c g' c e>16 r8 <cis gis' cis eis>8 |
}

gtrVerseC = \relative c' {
	r4 <d a' d fis>8 cis( d ~) <d a' d fis> r <c g' c e> |
  \override Voice.Slur #'stencil = #slur::draw-another-alternate-pointed-slur
	r8 d f g gis8( a4 )( gis8) |
	\revert Voice.Slur #'stencil
	r8 d ~ <d a' d fis>8 cis( d ~) <d a' d fis> r <c g' c e> |
	\override Voice.Slur #'stencil = #slur::draw-another-alternate-pointed-slur
	r8 d f g aes16( a) g f g f d8 |
	\revert Voice.Slur #'stencil
	d4 d8 d( cis) cis cis( d) ~ |
	d a( c d f) d16( c) d( c a8) |
	cis8( d) d d( cis) cis cis( d) ~ |
	\override Voice.Slur #'stencil = #slur::draw-another-alternate-pointed-slur
	d d f g aes8( a4.) ~|
	a1 ~ |
	a2( aes8) c c c |
	\revert Voice.Slur #'stencil
	c( d) d d d d d d ~ |
	d8 d d d d16() c a8) c d |
	\override Voice.Slur #'stencil = #slur::draw-another-alternate-pointed-slur
	aes4( a2.) ~ |
	\revert Voice.Slur #'stencil
	a1\fermata \bar "||"
}

gtrBridge = \relative c' {
	\tempo 4 = 185
%	R1*4
	<d a' d>4 <d a' d>8 <cis gis' cis> <c g' c>4. <a e' a>8 ~ |
	<a e' a>8 <aes ees' aes>4 <g d' g>4 <f c' f>4. |
	<d' a' d>8 <d a' d> <d a' d> <cis gis' cis> <c g' c>4. <a e' a>8 ~ |
	<a e' a>8 <f c' f>4 <g d' g>4 <gis dis' gis>4 <a e' a>8 |
	<d a' d>4 <d a' d>8 <cis gis' cis> <c g' c>4. <a e' a>8 ~ |
	<a e' a>8 <aes ees' aes>4 <g d' g>4 <f c' f>4. |
	r4 d'8 a( c d4) f8 ~ |
	f8 d4 a8( c cis d4) |
}

gtrVerseD = \relative c' {
	\tempo 4 = 185
	<d a' d fis>4 \palmMuteOn <d a' d fis>8 \palmMuteOff <cis gis' cis eis>4( <d a' d fis>8) <d a' d fis>4 |
	<b fis' b dis>4 \palmMuteOn <b fis' b dis>8 \palmMuteOff <bes f' bes d>4. r4 |
	<d a' d fis>4 \palmMuteOn <d a' d fis>8 \palmMuteOff <cis gis' cis eis>4( <d a' d fis>8) <d a' d fis>4 |
	<d a' d fis>8( <f c' f a>) <f c' f a> <e b' e gis>4 \palmMuteOn <e b' e gis>8 \palmMuteOff <ees bes' ees g>4 |
	<d a' d fis>4 \palmMuteOn <d a' d fis>8 \palmMuteOff <cis gis' cis eis>4( <d a' d fis>8) <d a' d fis>4 |
	<b fis' b dis>4 \palmMuteOn <b fis' b dis>8 \palmMuteOff <bes f' bes d>4. r4 |
	d4 d8 a c d4 f8 ~ |
	f8 d4 c8 a c cis d |
	<d a' d fis>4 \palmMuteOn <d a' d fis>8 \palmMuteOff <cis gis' cis eis>4( <d a' d fis>8) <d a' d fis>4 |
	<b fis' b dis>4 \palmMuteOn <b fis' b dis>8 \palmMuteOff <bes f' bes d>4. r4 |
	<d a' d fis>4 \palmMuteOn <d a' d fis>8 \palmMuteOff <cis gis' cis eis>4( <d a' d fis>8) <d a' d fis>4 |
	<d a' d fis>8( <f c' f a>) <f c' f a> <e b' e gis>4 \palmMuteOn <e b' e gis>8 \palmMuteOff <ees bes' ees g>4 |
	<d a' d fis>4 \palmMuteOn <d a' d fis>8 \palmMuteOff <cis gis' cis eis>4( <d a' d fis>8) <d a' d fis>4 |
	<b fis' b dis>4 \palmMuteOn <b fis' b dis>8 \palmMuteOff <bes f' bes d>4. r4 |
	d4 d8 a c d4 f8 ~ |
	f8 d4 a8 c cis d c |
	d4 d8 des c4.\prall a8 ~ |
	a8 aes4 g f4. |
	d'4 d8 des c4.\prall a8 ~ |
	a8 f4 g gis a |
	c8( d) d des c4.\prall a8 ~ |
	a8 aes4 g f4. |
	r4 d''8 a c d4 f8 ~ |
	f8 d4 a8 c cis d4 |
}

gtrSolo = \relative c' {

}

gtr = \relative c {
	\Key
	\gtrIntro
	\gtrVerseA
	\gtrVerseB
	\gtrVerseC
	\gtrBridge
	\gtrVerseD
}


%showLastLength = R1*10

Guitar = {
	\set Staff.midiInstrument = #"electric guitar (clean)"
	\global \clef "treble_8" << \gtr >>
}
