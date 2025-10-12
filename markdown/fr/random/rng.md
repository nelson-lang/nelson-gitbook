# rng

Générateur de nombres aléatoires.

## Syntaxe

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

## Argument d'entrée

- seed - an integer value: new seed for random generator
- generator - une chaîne : 'twister', 'twister64', 'simdTwister', 'combRecursive', 'philox', 'laggedfibonacci607'
- s - a struct

## Argument de sortie

- lst - a cell of strings.
- s - a struct

## Description

<p>
            lst = rng('enginelist') renvoie la liste des générateurs de nombres aléatoires disponibles.</p>

<p>
                rng('default') remet les paramètres du générateur de nombres aléatoires aux valeurs par défaut.</p>

<p>
                    s = rng('default') remet les paramètres du générateur de nombres aléatoires aux valeurs par défaut.</p>

<p>
                        rng('shuffle') remet les paramètres du générateur de nombres aléatoires aux valeurs par défaut et renvoie le générateur précédent sous forme de structure.</p>

<p>
                            s = rng('shuffle') initialise la graine du générateur de nombres aléatoires en fonction de l'heure courante.</p>

<p>
                                rng(seed) initialise la graine du générateur de nombres aléatoires en utilisant l'entier non négatif.</p>

<p>
                                    s = rng(seed) initialise la graine du générateur de nombres aléatoires en utilisant l'entier non négatif et renvoie le générateur précédent sous forme de structure.</p>

<p>
                                        rng(seed, generator) initialise la graine du générateur de nombres aléatoires en utilisant l'entier non négatif et spécifie également le type de générateur utilisé.</p>

<p>
                                            s = rng(seed, generator) initialise la graine du générateur de nombres aléatoires en utilisant l'entier non négatif, spécifie le type de générateur utilisé et renvoie le générateur précédent sous forme de structure.</p>

<p>
                                                rng('shuffle', generator) initialise la graine du générateur de nombres aléatoires en fonction de l'heure courante et spécifie également le type de générateur utilisé.</p>

<p>
                                                    s = rng('shuffle', generator) initialise la graine du générateur de nombres aléatoires en fonction de l'heure courante, spécifie également le type de générateur utilisé et renvoie le générateur précédent sous forme de structure.</p>

<p>
                                                        s = rng renvoie le générateur courant sous forme de structure.</p>

<p>
                                                            rng(s) restaure les paramètres du générateur de nombres aléatoires à partir d'une structure précédente renvoyée par s = rng.</p>

<p></p>

<p>Générateurs disponibles :</p>

| Valeur          | Nom du générateur                    | Mot-clé du générateur |
| --------------- | ------------------------------------ | --------------------- |
| "twister"       | Mersenne Twister                     | mt19937ar             |
| "simdTwister"   | SIMD-Oriented Fast Mersenne Twister  | dsfmt19937            |
| "combRecursive" | Combined Multiple Recursive          | mrg32k3a              |
| "multFibonacci" | Multiplicative Lagged Fibonacci      | mlfg6331_64           |
| "philox"        | Philox 4x32 generator with 10 rounds | philox4x32_10         |

<p>Le générateur par défaut est "twister".</p>

## Exemple

```matlab
rng('default');
r = rng()
lst = rng('enginelist')
```

## Voir aussi

[rand](../random/rand.md), [randn](../random/randn.md), [randi](../random/randi.md).

## Historique

| Version | Description                                                                   |
| ------- | ----------------------------------------------------------------------------- |
| 1.0.0   | version initiale                                                              |
| 1.15.0  | Nouveau générateur de nombres aléatoires : simdTwister, combRecursive, philox |

## Auteur

Allan CORNET
