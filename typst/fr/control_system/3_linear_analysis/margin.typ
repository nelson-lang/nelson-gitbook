#import "../nelson_help.typ": *

= margin <control_system:3_linear_analysis.margin>

Marges de gain et de phase d'un système LTI SISO.

== Syntaxe

- #raw("margin(sys)");
- #raw("[Gm, Pm, Wcg, Wcp] = margin(sys)");
- #raw("[Gm, Pm, Wcg, Wcp] = margin(mag, phase, w)");

== Argument d'entrée

/ sys: un modèle LTI SISO.
/ mag: amplitude de la réponse en fréquence (valeurs absolues).
/ phase: phase de la réponse en fréquence, en degrés.
/ w: fréquences, en rad\/s.

== Argument de sortie

/ Gm: marge de gain (valeur absolue), égale à 1\/|G(j\*Wcg)|.
/ Pm: marge de phase, en degrés.
/ Wcg: pulsation de passage de phase (rad\/s), là où la phase vaut -180 degrés.
/ Wcp: pulsation de passage de gain (rad\/s), là où l'amplitude vaut 1 (0 dB).

== Description

#strong[margin]; calcule la marge de gain, la marge de phase et les pulsations de passage associées d'un modèle en boucle ouverte SISO #strong[sys.];

 La marge de gain #strong[Gm]; est renvoyée en valeur absolue (pas en décibels) ; c'est le facteur par lequel le gain en boucle ouverte peut être augmenté avant que la boucle fermée ne devienne instable.

 La marge de phase #strong[Pm]; est exprimée en degrés ; c'est le retard de phase supplémentaire nécessaire pour atteindre l'instabilité.

 Lorsqu'une marge est infinie, #strong[Gm]; ou #strong[Pm]; vaut #strong[Inf.]; La pulsation de passage de phase #strong[Wcg]; vaut #strong[Inf]; lorsque la phase n'atteint -180 degrés qu'à fréquence infinie (système continu de degré relatif supérieur ou égal à deux), et #strong[NaN]; lorsqu'il n'y a aucun passage de phase.

 La forme #strong[margin(mag, phase, w)]; calcule les marges directement à partir de données de réponse en fréquence obtenues par ailleurs.

 Appelée sans argument de sortie, #strong[margin(sys)]; trace le diagramme de Bode du système.


== Exemple

``````matlab
H = tf(1, [1 3 2 0]);
[Gm, Pm, Wcg, Wcp] = margin(H)
``````


== Voir aussi

#nlink(<control_system:3_linear_analysis.bode>)[bode];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
