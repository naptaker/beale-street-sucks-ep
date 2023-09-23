%%% ================================================================ [ main.ly ]
%%% Description: Beale Street Sucks EP - Main score for "Slut Nite"
%%% Copyright:   (c) 2015-2023 Eric Bailey
%%% License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.24.2"

%%% ======================================================== [ Naptaker Config ]

\include "oll-core/package.ily"
\loadPackage naptaker

\setOption naptaker.guitar-tabs ##f
\setOption naptaker.staff-size #11

%%% ================================================================= [ Header ]

Key = { \key d \major }
Tempo = { \tempo 4 = 120 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title     = \markup \fontsize #8 "Slut Nite"
  opus      = "Beale Street Sucks EP"
  composer  = "Eric Bailey"
  poet      = "Sam Albers"
  arranger  = "Naptaker"
  copyright = "© 2013-2023 Eric Bailey"
}

%%% ================================================================= [ Layout ]

pageNumberColor = #(if (defined? 'pageNumberColor) pageNumberColor black)

\paper {
  two-sided = ##t
  print-first-page-number = ##t
  ragged-last = ##f
  
  evenHeaderMarkup = \markup {
    \column {
      \fill-line {
        \null
        \line {
          \with-color \pageNumberColor
          \if \should-print-page-number
          \fromproperty #'page:page-number-string
        }
      }
    }
  }
  
  oddHeaderMarkup = \markup {
    \column {
      \fill-line {
        \line {
          \with-color \pageNumberColor
          \if \should-print-page-number
          \fromproperty #'page:page-number-string
        }
        \null
      }
    }
  }
}

%%% =================================================================== [ Grid ]

\templateInit
#'("meta" "guitar" "bass" "drums up" "drums down")
#'(2 12 12 14 12 24)

\Naptaker

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"

%%% ==================================================================== [ EOF ]
