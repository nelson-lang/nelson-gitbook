#import "../nelson_help.typ": *

= lsim <control_system:4_time_frequency_response.lsim>

Trace la rÃ©ponse temporelle simulÃ©e d'un systÃ¨me dynamique Ã  des entrÃ©es arbitraires.

== Syntaxe

- #raw("lsim(sys, u, t)");
- #raw("lsim(sys, u, t, x0)");
- #raw("[y, tOut, x] = lsim(SYS, U, T, X0)");

== Argument d'entrée

/ sys: un modÃ¨le lti.
/ u: Signal d'entrÃ©e : matrice ou vecteur.
/ t: Ã‰chantillons temporels : vecteur.
/ x0: Valeurs d'Ã©tat initiales : vecteur.

== Argument de sortie

/ y: DonnÃ©es de rÃ©ponse simulÃ©es : matrice ou vecteur.
/ tOut: Vecteur temporel : vecteur.
/ x: Trajectoires d'Ã©tat : matrice ou vecteur.

== Description

La fonction #strong[lsim(sys, u, t)]; gÃ©nÃ¨re un tracÃ© illustrant la rÃ©ponse temporelle simulÃ©e du modÃ¨le de systÃ¨me dynamique #strong[sys]; Ã  l'historique d'entrÃ©e (#strong[t];, #strong[u];).

 Les Ã©chantillons temporels pour la simulation sont spÃ©cifiÃ©s par le vecteur #strong[t];.

 Dans le cas des systÃ¨mes Ã  entrÃ©e unique, le signal d'entrÃ©e #strong[u]; est un vecteur de la mÃªme longueur que #strong[t];.

 Pour les systÃ¨mes Ã  entrÃ©es multiples, #strong[u]; est un tableau avec des lignes correspondant aux Ã©chantillons temporels (length(t)) et des colonnes correspondant aux entrÃ©es de #strong[sys];.

 Une utilisation supplÃ©mentaire de la fonction est dÃ©montrÃ©e par l'exemple #strong[lsim(sys, u, t, x0)];, oÃ¹ un vecteur #strong[x0]; est fourni pour spÃ©cifier les valeurs d'Ã©tat initiales.

 Cela est particuliÃ¨rement pertinent lorsque #strong[sys]; est un modÃ¨le d'Ã©tat-espace.

 La fonction simule la rÃ©ponse temporelle du systÃ¨me dynamique pour un signal d'entrÃ©e arbitraire et trace les sorties correspondantes.


== Exemples

``````matlab
A = [-10 -20 -30;1  0  0; 0  1  0];
B = [1;   0;   0];
C = [0   0   1];
D = 0;
T = [0:0.1:1];
U = zeros(size(T, 1), size(T, 2));
X0 = [0.1 0.1 0.1];
sys = ss(A, B, C, D);
lsim(sys, U, T, X0);

``````


#align(center)[#image("lsim1.svg")]
``````matlab
A = [-1.7  -0.3   1.1;
     -0.2  -1.7   0.6;
      1.0   0.6  -1.4];
B = [ 1.5  0.6;
     -1.8  1.0;
      0    0  ];
C = [ 0    -0.5 -0.1;
      0.35 -0.1 -0.15
      0.65  0    0.6];
D = [ 0.5  0;
      0.05 0.75
      0    0];
sys = ss(A,B,C,D);
Tf = 10;
Ts = 0.1;
[uSq,t] = gensig("square",4,Tf,Ts);
uP = gensig("pulse",3,Tf,Ts);
u = [uSq uP];
lsim(sys,u,t)

``````


#align(center)[#image("lsim2.svg")]

== Voir aussi

#nlink(<control_system:2_model_conversion_interconnection.gensign>)[gensig];, #nlink(<control_system:4_time_frequency_response.step>)[step];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
