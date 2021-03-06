\include "../../Parts/LY/Drums/drums_intro.ly"
\include "../../Parts/LY/Drums/drums_verse.ly"
\include "../../Parts/LY/Drums/drums_chorus.ly"
\include "../../Parts/LY/Drums/drums_bridge.ly"
\include "../../Parts/LY/Drums/drums_ending.ly"

up = \drummode {
	\override Rest #'staff-position = #0
	\override MultiMeasureRest #'Y-offset = #1
	\voiceOne
	\stemUp
	
	\duIntro
	\duVerse
	\duChorus
	\duChorusEndingA
	\duVerse
	\duChorus
	\duChorusEndingB
	\duBridge
	\duVerse
	\duEnding
}


down = \drummode {
	\voiceTwo
	
	\ddIntro
	\ddVerse
	\ddChorus
	\ddChorusEndingA
	\ddVerse
	\ddChorus
	\ddChorusEndingB
	\ddBridge
	\ddVerse
	\ddEnding
}


theDrums = {
	\set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
%	\set DrumStaff.instrumentName = #"Drums"
	\global << \new DrumVoice \up \new DrumVoice \down >>
}