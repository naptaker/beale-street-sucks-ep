\include "../../../../include/preamble.ly"
\include "header.ly"

\layout {
	ragged-last = ##f
}

\paper {
	system-system-spacing #'minimum-distance = #16
  system-system-spacing #'padding = #11
}

#(set-global-staff-size 11)
%#(set-default-paper-size "arch a" 'landscape)
\include "../../Parts/LY/Guitar/guitar.ly"
\include "../../Parts/LY/Bass/bass.ly"
\include "../../Parts/LY/Drums/drums.ly"
\include "../../Parts/LY/Vocals/vocals.ly"


%showFirstLength = R1*26
\score {
	<<
		<<
			\new StaffGroup <<
				\new Staff \with {
					\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
				} {
					\new Voice = "voxOne" { \Tempo \voxVerse \voxChorusOne }
				}
				\new Lyrics \lyricsto "voxOne" { \lyricsVerseOne }
				\new Lyrics \lyricsto "voxOne" { \lyricsVerseTwo \lyricsChorusOne }
				\new Lyrics \lyricsto "voxOne" { \lyricsVerseThree \lyricsChorusThree }
				
				\new Staff \with {
					\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
				} {
					\new Voice = "voxTwo" {
						\Tempo
						\stopStaff
						\override Staff.Clef #'stencil = ##f
						\skip 1*19
						\override Staff.Clef #'stencil = ##t
						\startStaff
						\voxChorusTwo
					}
				}
				\new Lyrics \lyricsto "voxTwo" { \lyricsChorusTwo }
			>>
			\new ChordNames = "chords" \gtrHarmony
			\new FretBoards { \gtrHarmony }
			\new StaffGroup <<
				\new RhythmicStaff \with {
					\RemoveEmptyStaves
					\override VerticalAxisGroup #'remove-first = ##t
				} { \Tempo \clef "treble_8" \GuitarStrum }
				\new Staff \with {
%					\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
				} { \Guitar }
			>>
			
%			\new StaffGroup <<
				\new Staff \with {
					\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
				}
				{ \Tempo \clef bass \bassGuitar }
%				\new TabStaff \with {
%					\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
%				} {
%					\set TabStaff.stringTunings = #bass-tuning
%					\transpose c c, \bassGuitar
%				}
%			>>
		\new DrumStaff = "drums" \theDrums
		>>
	>>

	\layout {
		indent = 0\in
		\context { \Score
%							 \consists #(bars-per-line-engraver '(8))
%							 \scoreMagic
		}
		\context {
			\Staff
			\override StringNumber #'stencil = ##f
		}
	}
}

\score {
	\unfoldRepeats \articulate
	<<
		\new Staff {
			\context Voice = "vocals" { \transposition c' \Tempo \voxVerse \voxChorusTwo }
		}
		<<
			\new StaffGroup <<
				\new Staff { \Tempo \clef "treble_8" \Guitar }
			>>
			\new StaffGroup <<
				\new Staff { \transposition c \Tempo \clef bass \bassGuitar }
			>>
			\new DrumStaff { \theDrums }
		>>
	>>
	\midi { }
}