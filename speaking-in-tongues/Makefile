all: 	01_speaking_in_tongues-bass.pdf 01_speaking_in_tongues-bass.mid \
	01_speaking_in_tongues-drums.pdf 01_speaking_in_tongues-drums.mid \
	04_model-guitar.pdf 04_model-guitar.mid

clean:
	rm PDF/* MIDI/*

LILY_CMD = lilypond --silent \
		--include=Parts \
		-ddelete-intermediate-files \
		-dno-point-and-click \
		-djob-count=8 \
		-dmidi-extension=mid

.SUFFIXES: .ly .ily .pdf .mid

sit_score: Globals/01_speaking_in_tongues.ily Headers/01_speaking_in_tongues.ily Notes/01_speaking_in_tongues-drums.ily Notes/01_speaking_in_tongues-bass.ily
	cat Globals/01_speaking_in_tongues.ily Headers/01_speaking_in_tongues.ily \
		Notes/01_speaking_in_tongues-drums.ily \
		Notes/01_speaking_in_tongues-bass.ily Scores/layout.ily | \
	$(LILY_CMD) -o 01_speaking_in_tongues -; \
	test -f "01_speaking_in_tongues.pdf" && mv "01_speaking_in_tongues.pdf" PDF/

%.pdf: Parts/%.ily Parts/layout.ily
	[[ $< == *"drums"* ]] && LAYOUT="drums_layout" || LAYOUT="layout"; \
	cat $< "Parts/$$LAYOUT.ily" | $(LILY_CMD) -o $* -; \
	test -f "$*.pdf" && mv "$*.pdf" PDF/

%.mid: Parts/%.ily Parts/midi.ily
	[[ $< == *"drums"* ]] && MIDI="drums_midi" || MIDI="midi"; \
	cat $< "Parts/midi.ily" | $(LILY_CMD) -o $(basename $@) -; \
	test -f "$*.mid" && mv "$*.mid" MIDI/

01_speaking_in_tongues-bass.pdf 01_speaking_in_tongues-bass.mid: Globals/01_speaking_in_tongues.ily Headers/01_speaking_in_tongues.ily Notes/01_speaking_in_tongues-bass*.ily Parts/01_speaking_in_tongues-bass.ily

01_speaking_in_tongues-drums.pdf 01_speaking_in_tongues-drums.mid: Globals/01_speaking_in_tongues.ily Headers/01_speaking_in_tongues.ily Notes/01_speaking_in_tongues-drums*.ily Parts/01_speaking_in_tongues-drums.ily

04_model-guitar.pdf 04_model-guitar.mid: Globals/04_model.ily Headers/04_model.ily Notes/04_model-guitar*.ily Parts/04_model-guitar.ily
