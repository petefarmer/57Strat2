% '57 Strat 2
\version "2.18.2"
\include "definitions_No-Tab.ly"
\include "AGuitar.ly"
\include "AGuitarRefrain.ly"
\include "BGuitar.ly"
\include "BGuitarRefrain.ly"
\include "ADrums.ly"

\book {
 \header {
  title = "'57 Strat 2"
  subtitle = "DRAFT"
  subsubtitle = "v0.1"
  composer = "John Jorgenson"
  copyright = \markup { \char ##x00A9 Copyright Jorgensongs 2014 }
 }

\score {
%\unfoldRepeats
\new StaffGroup <<
  \new Staff \with {
   instrumentName = \markup {\line {"Guitar"}}
   \clef "treble_8"
  }{
  \key b \minor
  \tempo 4 = 120
  \time 4/4 
   \AGuitar
   \BGuitar
   \AGuitarRefrain
   \BGuitarRefrain
  }
%{
  \new DrumStaff <<
   \new DrumVoice { \ADrumsOne }
   \new DrumVoice { \ADrumsTwo }
  >>
%}
 >> % StaffGroup
 \layout {
  \context {
   \Score {
    \override StaffGrouper.staff-staff-spacing.padding = #5
    \override StaffGrouper.staff-staff-spacing.basic-distance = #5
   }
  }
  \context { \TabStaff \remove Clef_engraver }
 }
\midi {\tempo 4 = 120}
} % score
} % book
