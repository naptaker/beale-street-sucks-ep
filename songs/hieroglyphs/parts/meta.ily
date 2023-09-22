\gridPutMusic "meta" 1 {
  \section
  \sectionLabel "Intro"
  \global
  s1*10 \break
}

\gridPutMusic "meta" 2 {
  \section
  \sectionLabel "Verse"
  s1*8 \break
  s1*8 \break
}

\gridPutMusic "meta" 3 {
  \section
  \sectionLabel "Chorus A"
  s1*8 \break
  s1*8 \break
}

\gridPutMusic "meta" 4 \gridGetCellMusic "meta" 2

\gridPutMusic "meta" 5 {
  \section
  \sectionLabel "Chorus B"
  \gridGetCellMusic "meta" 3
}

\gridPutMusic "meta" 6 {
  \section
  \sectionLabel "Bridge"
  s1*9 \break
  s1*9 \break
}

\gridPutMusic "meta" 7 \gridGetCellMusic "meta" 2

\gridPutMusic "meta" 8 {
  \once \override Score.TimeSignature.stencil = ##f
  \time 1/4 s4
  \bar "|."
}
