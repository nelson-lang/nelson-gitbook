#import "../nelson_help.typ": *

= gensig <control_system:2_model_conversion_interconnection.gensign>

GÃ©nÃ¨re des signaux de test (carrÃ©, impulsion, bruit, ...).

== Syntaxe

- #raw("[u, t] = gensig(type, tau)");
- #raw("[u, t] = gensig(type, tau, Tf)");
- #raw("[u, t] = gensig(type, tau, Tf, Ts)");

== Argument d'entrée

/ type: Type de signal pÃ©riodique : 'cos', 'tan', 'sin', 'pulse', 'square'
/ tau: Periode : scalaire positif
/ Tf: DurÃ©e : scalaire positif ou 5\*tau (par dÃ©faut)
/ Ts: scalaire positif ou tau\/64 (par dÃ©faut)

== Argument de sortie

/ u: Signal gÃ©nÃ©rÃ© : vecteur colonne.
/ t: Vecteur temps : vecteur colonne.

== Description

GÃ©nÃ¨re des signaux de test pÃ©riodiques ou non (par ex. carrÃ©, impulsion, bruit) pour la simulation de rÃ©ponses temporelles.


== Exemple

``````matlab
f = figure();
tau = 3;
Tf = 6;
Ts = 0.1;

subplot(3, 2, 1)
[u,t] = gensig("sine",tau,Tf,Ts);
plot(t, u)
title('sine')

subplot(3, 2, 2)
[u,t] = gensig("square",tau,Tf,Ts);
plot(t, u)
title('square')

subplot(3, 2, 3)
[u,t] = gensig("cos",tau,Tf,Ts);
plot(t, u)
title('cosine')

subplot(3, 2, 4)
[u,t] = gensig("sin",tau,Tf,Ts);
plot(t, u)
title('sine')

subplot(3, 2, 5)
[u,t] = gensig("tan",tau,Tf,Ts);
plot(t, u)
title('tan')

``````


#align(center)[#image("gensig.svg")]

== Voir aussi

#nlink(<control_system:4_time_frequency_response.lsim>)[lsim];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
