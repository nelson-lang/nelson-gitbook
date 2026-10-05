#import "nelson_help.typ": *

= rng <random:rng>

Générateur de nombres aléatoires.

== Syntaxe

- #raw("lst = rng('enginelist')");
- #raw("rng('default')");
- #raw("s = rng('default')");
- #raw("rng('shuffle')");
- #raw("s = rng('shuffle')");
- #raw("rng(seed)");
- #raw("s = rng(seed)");
- #raw("rng(seed, generator)");
- #raw("s = rng(seed, generator)");
- #raw("rng('shuffle', generator)");
- #raw("rng(s)");
- #raw("rng(stream)");

== Argument d'entrée

/ seed: une valeur entière : nouvelle graine pour le générateur aléatoire
/ generator: une chaîne : 'twister', 'twister64', 'simdTwister', 'combRecursive', 'philox', 'threefry', 'laggedfibonacci607', 'pcg', 'xoshiro'. Les mots-clés 'pcg64dxsm' et 'xoshiro256pp' sont également acceptés.
/ s: une structure : état du générateur de nombres aléatoires

== Argument de sortie

/ lst: a cell of chaînes.
/ s: une structure : état du générateur de nombres aléatoires

== Description

#strong[lst \= rng('enginelist')]; renvoie la liste des générateurs de nombres aléatoires disponibles.

 #strong[rng('default')]; remet les paramètres du générateur de nombres aléatoires aux valeurs par défaut.

 #strong[s \= rng('default')]; remet les paramètres du générateur de nombres aléatoires aux valeurs par défaut et renvoie le générateur précédent sous forme de structure.

 #strong[rng('shuffle')]; remet les paramètres du générateur de nombres aléatoires aux valeurs par défaut.

 #strong[s \= rng('shuffle')]; initialise la graine du générateur de nombres aléatoires en fonction de l'heure courante et renvoie le générateur précédent sous forme de structure.

 #strong[rng(seed)]; initialise la graine du générateur de nombres aléatoires en utilisant l'entier non négatif.

 #strong[s \= rng(seed)]; initialise la graine du générateur de nombres aléatoires en utilisant l'entier non négatif et renvoie le générateur précédent sous forme de structure.

 #strong[rng(seed, generator)]; initialise la graine du générateur de nombres aléatoires en utilisant l'entier non négatif et spécifie également le type de générateur utilisé.

 #strong[s \= rng(seed, generator)]; initialise la graine du générateur de nombres aléatoires en utilisant l'entier non négatif, spécifie le type de générateur utilisé et renvoie le générateur précédent sous forme de structure.

 #strong[rng('shuffle', generator)]; initialise la graine du générateur de nombres aléatoires en fonction de l'heure courante et spécifie également le type de générateur utilisé.

 #strong[s \= rng('shuffle', generator)]; initialise la graine du générateur de nombres aléatoires en fonction de l'heure courante, spécifie également le type de générateur utilisé et renvoie le générateur précédent sous forme de structure.

 #strong[s \= rng]; renvoie le générateur courant sous forme de structure.

 #strong[rng(s)]; restaure les paramètres du générateur de nombres aléatoires à partir d'une structure précédente renvoyée par#strong[s \= rng];.

 

 Générateurs disponibles :

 

#table(
  columns: 3,
  [Valeur], [Nom du générateur], [Mot-clé du générateur], 
  ["twister"], [Mersenne Twister], [mt19937ar], 
  ["simdTwister"], [SIMD-Oriented Fast Mersenne Twister], [dsfmt19937], 
  ["combRecursive"], [Combined Multiple Recursive], [mrg32k3a], 
  ["multFibonacci"], [Multiplicative Lagged Fibonacci], [mlfg6331\_64], 
  ["philox"], [Philox 4x32 generator with 10 rounds], [philox4x32\_10], 
  ["pcg"], [Générateur congruentiel permuté 64 bits avec double xor-shift et multiplication], [pcg64dxsm], 
  ["xoshiro"], [Générateur xor-shift-rotate avec état de 256 bits et double addition], [xoshiro256pp], 
)
 Les générateurs "pcg" et "xoshiro" produisent des sorties de 64 bits : chaque double utilise 53 bits aléatoires et #strong[randn]; utilise la méthode d'inversion (inverse de la fonction de répartition normale appliquée à une valeur uniforme). Leur état (#strong[s.State];) est un vecteur colonne uint64 : les mots du moteur (état et incrément de 128 bits pour "pcg", état de 256 bits pour "xoshiro"), le mode de précision (0 : pleine précision, 1 : précision réduite fixée par la propriété #strong[FullPrecision]; de #strong[RandStream];) et une demi-sortie de 32 bits en cache utilisée par le mode de précision réduite. La graine est étendue en état du moteur par le générateur SplitMix64.

 Le générateur par défaut est "twister".


== Exemples

``````matlab
rng('default');
r = rng()
lst = rng('enginelist')
``````

Nombres reproductibles avec le générateur xoshiro256++

``````matlab
rng(42, 'xoshiro');
s = rng();
a = rand(1, 3);
rng(s);
b = rand(1, 3);
isequal(a, b)
s.Type
``````


== Voir aussi

#nlink(<random:rand>)[rand];, #nlink(<random:randn>)[randn];, #nlink(<random:randi>)[randi];, #nlink(<random:RandStream>)[RandStream];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.15.0], [Nouveau générateur de nombres aléatoires : simdTwister, combRecursive, philox],
  [2.0.0], [Nouveaux générateurs de nombres aléatoires : pcg (pcg64dxsm) et xoshiro (xoshiro256pp)],
)

// Auteur: Allan CORNET
