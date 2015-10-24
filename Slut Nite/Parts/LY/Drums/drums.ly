up = \drummode {
	\override Rest #'staff-position = #0
	\override MultiMeasureRest #'Y-offset = #1
	\voiceOne
	\stemUp

	tomfl4 sn8 tomfl tomfl sn8 hhho4 |
	tomfl4 sn8 \times 2/3 { sn16 sn sn } sn8 sn sn16 sn sn sn |

	tomfl4 sn8 tomfl tomfl sn8 hhho4 |
	tomfl4 sn8 tomfl tomfl sn8 hhho4 |
	tomfl4 sn8 tomfl tomfl sn8 hhho4 |
	tomfl4 sn8 \times 2/3 { sn16 sn sn } sn8 sn sn16 sn sn sn |
}


down = \drummode {
	\voiceTwo
	bd4 hhp bd s |
	<hhp bd>4 hhp hhp s |

	bd4 hhp bd s |
	bd4 hhp bd s |
	bd4 hhp bd s |
	<hhp bd>4 hhp hhp s |
}


theDrums = {
	\set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
%	\set DrumStaff.instrumentName = #"Drums"
	\global << \new DrumVoice \up \new DrumVoice \down >>
}