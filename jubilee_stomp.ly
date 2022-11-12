\include "header.ly"

#(set-accidental-style 'modern-cautionary)
\new StaffGroup <<
	\new Staff \with {
		instrumentName = \markup { "Klar." \concat{ B \teeny \raise #0.4 \flat } }
	} \transpose b c' {
		\clef violin
		\relative c'' {
			#(set-accidental-style 'modern-cautionary)
			\key f \minor
			h1 b as f2 r2 r1 r1
			h2 b as f4 as
		}
	}
	\new ChordNames {
		\chordmode {
			\germanChords
			\set chordNameLowercaseMinor = ##t
			\set chordChanges = ##t
			\set noChordSymbol = ""

			f1:dim b:9 c:7 f2:m r
			R1*2
			f2:dim b:9 c:7 f:m
			f1:m f:m f:m f:m f:m f:m
			des:9 des:9
			c:7 c:7 c:7 c:7 c:7 c:7
			f2:m
			f2:dim b:9 c:7
			f1:m f:m f:m f:m
			as:7 as:7
			des des des
			d:dim
			as
			f2.:9 f4:7
			b1:9
			es:9
		}
	}
	\new Staff {
		\tempo "Fast Quickstep" 2 = 120
		\key f \minor
		\clef violin
		\relative c' {
			#(set-accidental-style 'modern-cautionary)
			<d f>1 <des f> <b e> <as c>2
			^\markup {carschti-auf-bass-trommel-solo}
			r2 r1 r1
			<d f>2 <des f> <b e>
			<as c>2
			\bar "||"
			^\segno
			\clef alto
			f'8 (e f as c as)
			f (e f as c as)
			f (e f as c4 es2.) r1

			f,8 (e f as c as)
			f   (e f as c as)
			f   (e f as ces4 es2.) r1

			r8 c (h c b g e c)
			c' (h b g e c) h c

			des-4 c f e as-2 g des'-4 g,
			c-4 g h g b g e c

			h-1 (c d e d c)
			h (c d e d c)
			h (c d e
			f4) r h2 b as

			f8 (e f as c as)
			f  (e f as c as)
			f  (e f as c4 es2.) r1

			r8 as, (g as ges-2 es c as)
			as' (g ges-2 es c as) b c
			des-2 f c es des c4 b8-2 as2 r

			f'8 (e f g as g)
			f   (e f g as g)
			f   (e f g as g)
			as b c es4 c8
			g g g4 g f
			r4 c r8 c4 b8
			f'8 f f4 f es
			\mark \markup { \musicglyph #"scripts.coda" }
			\bar "||"
			as,4
		}
	}
>>

\new StaffGroup <<
	\new ChordNames {
		\chordmode {
			\germanChords
			\set chordNameLowercaseMinor = ##t
			\set chordChanges = ##t
			\set noChordSymbol = ""

			\partial 2.
			r2.
			r1
			\repeat volta 2 {
				f1:m f:m
				b b
				es es
			}
			\alternative {
				{ as as }
				{ as }
			}
		}
	}
	\new Staff \with {
		instrumentName = \markup { "Klar." \concat{ B \teeny \raise #0.4 \flat } }
	} \transpose b c' {
		\clef violin
		\relative c'' {
			#(set-accidental-style 'modern-cautionary)
			\key f \minor
			\partial 2.
			es4 ~ es es~
			es es h8 c h c
			\repeat volta 2 {
				_\markup { "Improstrecke..." }
				c4 c c2
				r4 h8 c4 h8 c4
				c4 f f2

				r4 h,8 c4 h8 c4
				es4 es es2

				r4 es8 es4 f8 es4
			}
			\alternative {
				{ b4 c es b8 c8 ~ c f b,4 c2 }
				{ as4 _\markup{"Next Impro... dann "\musicglyph #"scripts.segno"} r2. r1 }
			}
		}
	}
>>
\new StaffGroup <<
	\new ChordNames {
		\chordmode {
			\germanChords
			\set chordNameLowercaseMinor = ##t
			\set chordChanges = ##t
			\set noChordSymbol = ""

			as2
			es2
			es2:7
			as2

			\bar "|."
		}
	}
	\new Staff {
		\mark \markup { \musicglyph #"scripts.coda" }
		\clef alto
		\relative c' {
			\key f \minor
			f8 f f4 f es8 c ~ c b8 as f as2
			\bar "|."
		}
	}
>>

