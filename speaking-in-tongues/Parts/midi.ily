\version "2.18.2"

\score {
  <<
    \unfoldRepeats \articulate
    \new Staff {
      << \global \midiNotes >>
    }
  >>
  \midi {}
}
