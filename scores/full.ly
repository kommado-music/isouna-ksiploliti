\version "2.18.2"
\language "english"

\include "articulate.ly"
\include "../globals.ily"
\include "../voices/mpouzouki-one.ily"
\include "../voices/guitar.ily"
\include "../voices/harmonics.ily"

\paper {
	  #(set-paper-size "a4")
	  top-margin = 10
	  left-margin = 10
	  right-margin = 2
	  %page-count = #1
}

\score {
	\new StaffGroup <<
		\new Staff {
			\set Staff.instrumentName = "Μπουζ."			
			\globalTempo
			\new Voice = "bouz1" {
				\mpouzoukiAll
			}
		}			
		\new ChordNames {
			\set chordChanges = ##t
			\chordsAll			
		}
		\new Staff {
			\set Staff.instrumentName = "Κιθάρα"					
			\new Voice = "guitar" {		
				\guitarAll				
			}
		}		
	>>
	\layout {
		\context {
    		\Score
    		\override StaffGrouper.staff-staff-spacing.padding = #0
    		\override StaffGrouper.staff-staff-spacing.basic-distance = #1
  		}
	}
}

\score {
	\new StaffGroup <<
		\new Staff = "bouzouki-1" {
			
			\set Staff.midiInstrument = #"acoustic guitar (steel)"
			\unfoldRepeats {
				\mpouzoukiAll
			}
		}			
		\new Staff = "guitar" {
			
			\set Staff.midiInstrument = #"acoustic guitar (steel)"
			\unfoldRepeats {
				\guitarAll				
			}
		}			
	>>
	\midi {
    	\context {
			\Score
		}   	
    	\globalTempo
  	}
}