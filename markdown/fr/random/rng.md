# rng

Générateur de nombres aléatoires.

## 📝 Syntaxe

- lst = rng('enginelist')
- rng('default')
- s = rng('default')
- rng('shuffle')
- s = rng('shuffle')
- rng(seed)
- s = rng(seed)
- rng(seed, generator)
- s = rng(seed, generator)
- rng('shuffle', generator)
- rng(s)

## 📥 Argument d'entrée

- seed - une valeur entière : nouvelle graine pour le générateur aléatoire
- generator - une chaîne : 'twister', 'twister64', 'simdTwister', 'combRecursive', 'philox', 'laggedfibonacci607'
- s - une structure : état du générateur de nombres aléatoires

## 📤 Argument de sortie

- lst - a cell of chaînes.
- s - une structure : état du générateur de nombres aléatoires

## 📄 Description

<b>lst = rng('enginelist')</b> renvoie la liste des générateurs de nombres aléatoires disponibles.

<b>rng('default')</b> remet les paramètres du générateur de nombres aléatoires aux valeurs par défaut.

<b>s = rng('default')</b> remet les paramètres du générateur de nombres aléatoires aux valeurs par défaut et renvoie le générateur précédent sous forme de structure.

<b>rng('shuffle')</b> remet les paramètres du générateur de nombres aléatoires aux valeurs par défaut.

<b>s = rng('shuffle')</b> initialise la graine du générateur de nombres aléatoires en fonction de l'heure courante et renvoie le générateur précédent sous forme de structure.

<b>rng(seed)</b> initialise la graine du générateur de nombres aléatoires en utilisant l'entier non négatif.

<b>s = rng(seed)</b> initialise la graine du générateur de nombres aléatoires en utilisant l'entier non négatif et renvoie le générateur précédent sous forme de structure.

<b>rng(seed, generator)</b> initialise la graine du générateur de nombres aléatoires en utilisant l'entier non négatif et spécifie également le type de générateur utilisé.

<b>s = rng(seed, generator)</b> initialise la graine du générateur de nombres aléatoires en utilisant l'entier non négatif, spécifie le type de générateur utilisé et renvoie le générateur précédent sous forme de structure.

<b>rng('shuffle', generator)</b> initialise la graine du générateur de nombres aléatoires en fonction de l'heure courante et spécifie également le type de générateur utilisé.

<b>s = rng('shuffle', generator)</b> initialise la graine du générateur de nombres aléatoires en fonction de l'heure courante, spécifie également le type de générateur utilisé et renvoie le générateur précédent sous forme de structure.

<b>s = rng</b> renvoie le générateur courant sous forme de structure.

<b>rng(s)</b> restaure les paramètres du générateur de nombres aléatoires à partir d'une structure précédente renvoyée par <b>s = rng</b>.

Générateurs disponibles :

| Valeur          | Nom du générateur                    | Mot-clé du générateur |
| --------------- | ------------------------------------ | --------------------- |
| "twister"       | Mersenne Twister                     | mt19937ar             |
| "simdTwister"   | SIMD-Oriented Fast Mersenne Twister  | dsfmt19937            |
| "combRecursive" | Combined Multiple Recursive          | mrg32k3a              |
| "multFibonacci" | Multiplicative Lagged Fibonacci      | mlfg6331_64           |
| "philox"        | Philox 4x32 generator with 10 rounds | philox4x32_10         |

Le générateur par défaut est "twister".

## 💡 Exemple

```matlab
rng('default');
r = rng()
lst = rng('enginelist')
```

## 🔗 Voir aussi

[rand](../random/rand.md), [randn](../random/randn.md), [randi](../random/randi.md).

## 🕔 Historique

| Version               | 📄 Description                                          |
| --------------------- | ------------------------------------------------------- |
| 1.0.0                 | version initiale                                        |
| 1.15.0                | Nouveau générateur de nombres aléatoires : simdTwister, |
| combRecursive, philox |

## 👤 Auteur

Allan CORNET
