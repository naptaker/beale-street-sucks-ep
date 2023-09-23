\gridPutMusic "drums up" 1 \drummode {
  \global
  \include "../notes/drums_up-I.ily"
}

\gridPutMusic "drums down" 1 \drummode {
  \global
  \include "../notes/drums_down-I.ily"
}

\gridPutMusic "drums up" 2 \drummode {
  \global
  \include "../notes/drums_up-II.ily"
}

\gridPutMusic "drums down" 2 \drummode {
  \global
  \include "../notes/drums_down-II.ily"
}

\gridPutMusic "drums up" 3 \drummode {
  \global
  \include "../notes/drums_up-III.ily"
  \include "../notes/drums_up-IIIa.ily"
}

\gridPutMusic "drums down" 3 \drummode {
  \global
  \include "../notes/drums_down-III.ily"
  \include "../notes/drums_down-IIIa.ily"
}

\gridPutMusic "drums up" 4 \gridGetCellMusic "drums up" 2

\gridPutMusic "drums down" 4 \gridGetCellMusic "drums down" 2

\gridPutMusic "drums up" 5 \gridGetCellMusic "drums up" 3

\gridPutMusic "drums down" 5 \gridGetCellMusic "drums down" 3

\gridPutMusic "drums up" 6 \drummode {
  \include "../notes/drums_up-VI.ily"
}

\gridPutMusic "drums down" 6 \drummode {
  \include "../notes/drums_down-VI.ily"
}

\gridPutMusic "drums up" 7 \gridGetCellMusic "drums up" 2

\gridPutMusic "drums down" 7 \gridGetCellMusic "drums down" 2

\gridPutMusic "drums up" 8 \drummode {
  r4
}

\gridPutMusic "drums down" 8 \drummode {
  s4
}
