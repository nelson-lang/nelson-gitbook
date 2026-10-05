#import "../nelson_help.typ": *

= bode <control_system:3_linear_analysis.bode>

Diagramme de Bode de la rÃƒÂ©ponse en frÃƒÂ©quence, donnÃƒÂ©es de magnitude et de phase.

== Syntaxe

- #raw("bode()");
- #raw("bode(H)");
- #raw("bode(H, wIn)");
- #raw("bode(H, w, lineSpec)");
- #raw("[magnitude, phase, w] = bode(H)");
- #raw("[magnitude, phase, w] = bode(H, wIn)");

== Argument d'entrée

/ H: un modÃƒÂ¨le lti.
/ wIn: une cellule {wmin, wmax} ou un vecteur \[wmin:wmax\].
/ lineSpec: Style de ligne, marqueur et couleur.

== Argument de sortie

/ magnitude: Amplitude : taille 1 x 1 x k (SISO).
/ phase: Phase: size 1 x 1 x k (SISO).
/ w: Frequencies: a vector: 1 x k.

== Description

#strong[bode(sys)]; generates a Bode plot illustrating the frequency response of a dynamic system model, denoted as #strong[sys.];

 This plot visually represents the system's response in terms of both magnitude (measured in decibels, dB) and phase (measured in degrees) across varying frequencies.

 The specific frequency points on the plot are automatically determined by #strong[bode]; based on the system's inherent dynamics.


== Exemple

``````matlab
H = tf([1 0.1 7.5],[1 0.12 9 0 0]);
bode(H,{1 10}, '-.')
``````


#align(center)[#image("bode1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.1_line_plots.plot>)[plot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
