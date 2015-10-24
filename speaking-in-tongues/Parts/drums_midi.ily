\version "2.18.2"

\score {
  \unfoldRepeats \articulate
  <<
    <<
      \new DrumStaff {
	\global \midiNotes
      }
    >>
  >>
  \midi {}
}
