\gridPutMusic "drums up" 1 \drummode {
  \global
  \override Rest.staff-position = #0
  \override MultiMeasureRest.Y-offset = #0
  \include "../notes/drums_up-I.ily"
}

\gridPutMusic "drums down" 1 \drummode {
  \include "../notes/drums_down-I.ily"
}

\gridPutMusic "drums up" 2 \drummode {
  \include "../notes/drums_up-II.ily"
}

\gridPutMusic "drums down" 2 \drummode {
  \include "../notes/drums_down-II.ily"
}
