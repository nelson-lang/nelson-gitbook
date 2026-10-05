#import "../nelson_help.typ": *

= acker <control_system:5_control_design_tuning.acker>

Sélection du gain de placement des pôles utilisant la formule d'Ackermann.

== Syntaxe

- #raw("K = acker(A, B, P)");

== Argument d'entrée

/ A: Matrice d'état : matrice Nx-par-Nx
/ B: Matrice entrée-état : matrice Nx-par-Nu
/ P: Vecteur de localisation des pôles en boucle fermée souhaité.

== Argument de sortie

/ K: matrice de gain de rétroaction.

== Description

La fonction #strong[acker]; calcule la matrice de gain de rétroaction #strong[K]; pour un système à entrée unique décrit par les matrices d'espace d'état #strong[A]; et #strong[B];.

 Les pôles en boucle fermée du système sous la loi de rétroaction #strong[u \= -Kx]; sont déterminés par le vecteur spécifié #strong[P];, où #strong[P]; représente les localisations des pôles souhaitées.

 Les pôles en boucle fermée sont essentiellement les valeurs propres de la matrice #strong[A - B\*K];, calculées comme #strong[P \= eig(A - B\*K)];.

 

 Cet algorithme utilise la formule d'Ackermann.

 Cependant, les utilisateurs doivent être conscients que cette méthode peut ne pas être numériquement fiable, particulièrement pour les systèmes d'ordre supérieur à 10 ou pour les systèmes faiblement contrôlables.

 Si l'algorithme rencontre une instabilité numérique ou si les pôles en boucle fermée dévient significativement (plus de 10%) des localisations souhaitées spécifiées dans #strong[P];, un message d'avertissement est émis pour alerter l'utilisateur sur les problèmes potentiels.

 Les utilisateurs sont invités à faire preuve de prudence et à envisager des méthodes alternatives pour les systèmes d'ordre supérieur ou faiblement contrôlables.


== Exemple

``````matlab
A = [0 1 0; 0 0 1;-1 -5 -6];
B = [ 0; 0; 1];
P = [-10 -2-4i -2+4i];
K = acker(A, B, P)
``````


== Voir aussi

#nlink(<control_system:6_matrix_computations.cloop>)[cloop];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
