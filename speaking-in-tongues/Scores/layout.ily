\include "defaults.ily"

\header {
  instrument = "Full Score"
}

\score {
  <<
    \new Staff {
      \partDefaults
      << \global \clef "bass" \Key \bassNotes >>
    }
    \new DrumStaff {
      \partDefaults
      << \global
	 <<
	   \new DrumVoice \drumUpNotes
	   \new DrumVoice \drumDownNotes
	 >>
       >>
    }
  >>
  \layout {}
}
