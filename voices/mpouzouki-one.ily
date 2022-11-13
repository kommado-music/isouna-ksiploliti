\include "../globals.ily"

mpouzoukiPartI = \relative d' {
	d16[c d e] 
	f16[gf gf f]
	f16[e e d]
	gf8[f e]					| \break
	
	d16[c d e] 
	f16[gf gf f]
	f16[d e c]
	d8 d4						| \break
	
}

mpouzoukiPartII = \relative d' {
	<d a d,>16.[d'32 c16 bf]
	a16.[bf32 a16 gf]
	f16[e d e]
	gf8[f e]					| \break
	
	<d a d,>16.[d'32 c16 bf]
	a16.[bf32 a16 gf]
	f16[e e c]
	d8 d4						| \break
	
}

mpouzoukiAll = \relative d' {
	\global
	\repeat volta 2 { \mpouzoukiPartI }
	\mpouzoukiPartII
}