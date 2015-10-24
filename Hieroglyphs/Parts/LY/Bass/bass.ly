\include "../../../../include/bend.ly"
\include "../../Parts/LY/Bass/bass_intro.ly"
\include "../../Parts/LY/Bass/bass_verse.ly"
\include "../../Parts/LY/Bass/bass_chorus.ly"
\include "../../Parts/LY/Bass/bass_bridge.ly"
\include "../../Parts/LY/Bass/bass_ending.ly"


bgtr = \relative c {
	\Key
	
	\bassIntro
	\bassVerse
	\bassChorus
	\bassChorusEndingA
	\bassVerse
	\bassChorus
	\bassChorusEndingB
	\bassBridge
	\bassVerse
	\bassEnding
}

%showLastLength = R1*24

bassGuitar = {
	\set Staff.midiInstrument = #"electric bass (finger)"
	\global	\clef bass << \bgtr >>
}