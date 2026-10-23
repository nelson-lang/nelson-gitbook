#import "nelson_help.typ": *

= randg <random:randg>

Nombre aléatoire distribué selon une loi gamma.

== Syntaxe

- #raw("M = randg");
- #raw("M = randg(A)");
- #raw("M = randg(A, n)");
- #raw("M = randg(A, x1, x2, ... , xN)");
- #raw("M = randg(A, sz)");
- #raw("M = randg(A, x1, x2, ... , xN, classname)");

== Argument d'entrée

/ A: une valeur ou un tableau réel positif ou nul : le ou les paramètres de forme.
/ n: une variable : une matrice n-par-n sera générée.
/ x1, x2, ... , xN: valeurs x1-par-...-par-xN
/ classname: une chaîne : 'single' ou 'double'

== Argument de sortie

/ M: une matrice de nombres aléatoires.

== Description

#strong[randg]; renvoie une matrice dont les éléments suivent une loi gamma, de paramètre de forme #strong[A]; et d'échelle unitaire.

 Un tirage gamma de forme #strong[k]; a pour moyenne #strong[k]; et pour variance #strong[k]; ; une forme de 1 donne la loi exponentielle standard.

 Lorsque seul #strong[A]; est fourni, le résultat a la taille de #strong[A]; et chaque élément utilise la forme correspondante. Lorsqu'une taille est fournie, #strong[A]; doit être un scalaire utilisé pour tous les éléments.

 Les valeurs sont tirées par la méthode de rejet de Marsaglia et Tsang ; la graine (seed) peut être modifiée avec #strong[rng];.


== Bibliographie

G. Marsaglia et W. W. Tsang, "A simple method for generating gamma variables", ACM Transactions on Mathematical Software, 26(3), 363-372, 2000.

== Exemples

``````matlab
rng('default');
randg

``````

``````matlab
rng('default');
randg(2, 3)

``````

``````matlab
rng('default');
M = randg(3, 1, 100000);
[mean(M), var(M)]

``````

``````matlab
rng('default');
randg(2, 2, 2, 'single')

``````


== Voir aussi

#nlink(<random:rand>)[rand];, #nlink(<random:randn>)[randn];, #nlink(<random:rng>)[rng];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
