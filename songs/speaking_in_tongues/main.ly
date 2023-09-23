%%% ================================================================ [ main.ly ]
%%% Description: Beale Street Sucks EP - Main score for "Speaking in Tongues"
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

Key    = { \key g \major }
Tempo  = { \tempo 4 = 160 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title     = \markup \fontsize #8 "Speaking in Tongues"
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
#'()
#'()

\Naptaker

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"

%%% ==================================================================== [ EOF ]
