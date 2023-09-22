\gridPutMusic "bass" 1 \relative c, {
  \global
  \include "../notes/bass-I.ily"
}

\gridPutMusic "bass" 2 \relative c, {
  \include "../notes/bass-II.ily"
}

\gridPutMusic "bass" 3 \relative c, {
  \include "../notes/bass-III.ily"
  \include "../notes/bass-IIIa.ily"
}

\gridPutMusic "bass" 4 \gridGetCellMusic "bass" 2

\gridPutMusic "bass" 5 \gridGetCellMusic "bass" 3

\gridPutMusic "bass" 6 \relative c, {
  \include "../notes/bass-VI.ily"
}

\gridPutMusic "bass" 7 \gridGetCellMusic "bass" 2

\gridPutMusic "bass" 8 \relative c, {
  a4
}
