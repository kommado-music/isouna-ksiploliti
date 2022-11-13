\header {
	title = "Ησουνα Ξυπόλητη"
  	composer = "Σπύρος Περιστέρης"
  	midititle = "paksimadokleftra"  	
}
  
global = {  
 	\key d \minor
	\time 9/8
}

globalTempo = \tempo 8 = 48

cb = #(define-music-function
		(parser location left note right)
		(number? ly:music? number?)
		#{			
			\set stemLeftBeamCount = #left
			\set stemRightBeamCount = #right
			#note						
		#}
)