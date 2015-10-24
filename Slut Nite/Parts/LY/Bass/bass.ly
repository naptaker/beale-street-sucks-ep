bgtr = \relative c {
	\Key
	R1*2
	d4 a8 cis d f d c |
	d4 a8 cis bes bes bes c |
}

%showLastLength = R1*24

bassGuitar = {
	\set Staff.midiInstrument = #"electric bass (finger)"
	\global	\clef bass << \bgtr >>
}