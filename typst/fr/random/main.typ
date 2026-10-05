#import "nelson_help.typ": *

= Aléatoire

Le module Random fournit des outils pour générer des nombres aléatoires et des séquences aléatoires dans Nelson.

 Il prend en charge les distributions uniforme et normale, la génération d'entiers aléatoires, les permutations et le contrôle de l'état du générateur de nombres aléatoires.

 Ce module est essentiel pour les simulations, la modélisation probabiliste et les calculs stochastiques.

== Functions

- #nlink(<random:RandStream>)[RandStream]: Objet de flux de nombres aléatoires.
- #nlink(<random:rand>)[rand]: Nombre aléatoire.
- #nlink(<random:randi>)[randi]: Entier aléatoire.
- #nlink(<random:randn>)[randn]: Nombre aléatoire normalement distribué.
- #nlink(<random:randperm>)[randperm]: Permutation aléatoire de valeurs entières.
- #nlink(<random:rng>)[rng]: Générateur de nombres aléatoires.


#nested[
#pagebreak(weak: true)
#include "RandStream.typ"
#pagebreak(weak: true)
#include "rand.typ"
#pagebreak(weak: true)
#include "randi.typ"
#pagebreak(weak: true)
#include "randn.typ"
#pagebreak(weak: true)
#include "randperm.typ"
#pagebreak(weak: true)
#include "rng.typ"
]
