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
- rng(stream)

## 📥 Argument d'entrée

- seed - une valeur entière : nouvelle graine pour le générateur aléatoire
- generator - une chaîne : 'twister', 'twister64', 'simdTwister', 'combRecursive', 'philox', 'threefry', 'laggedfibonacci607', 'pcg', 'xoshiro'. Les mots-clés 'pcg64dxsm' et 'xoshiro256pp' sont également acceptés.
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

<b>rng(s)</b> restaure les paramètres du générateur de nombres aléatoires à partir d'une structure précédente renvoyée par<b>s = rng</b>. 

 

Générateurs disponibles : 

| Valeur | Nom du générateur | Mot-clé du générateur | 
| --- | --- | --- | 
| "twister" | Mersenne Twister | mt19937ar | 
| "simdTwister" | SIMD-Oriented Fast Mersenne Twister | dsfmt19937 | 
| "combRecursive" | Combined Multiple Recursive | mrg32k3a | 
| "multFibonacci" | Multiplicative Lagged Fibonacci | mlfg6331\_64 | 
| "philox" | Philox 4x32 generator with 10 rounds | philox4x32\_10 | 
| "pcg" | Générateur congruentiel permuté 64 bits avec double xor-shift et multiplication | pcg64dxsm | 
| "xoshiro" | Générateur xor-shift-rotate avec état de 256 bits et double addition | xoshiro256pp | 

 

Les générateurs "pcg" et "xoshiro" produisent des sorties de 64 bits : chaque double utilise 53 bits aléatoires et <b>randn</b> utilise la méthode d'inversion (inverse de la fonction de répartition normale appliquée à une valeur uniforme). Leur état (<b>s.State</b>) est un vecteur colonne uint64 : les mots du moteur (état et incrément de 128 bits pour "pcg", état de 256 bits pour "xoshiro"), le mode de précision (0 : pleine précision, 1 : précision réduite fixée par la propriété <b>FullPrecision</b> de <b>RandStream</b>) et une demi-sortie de 32 bits en cache utilisée par le mode de précision réduite. La graine est étendue en état du moteur par le générateur SplitMix64. 

Le générateur par défaut est "twister".

## 💡 Exemples



```matlab
rng('default');
r = rng()
lst = rng('enginelist')
```
Nombres reproductibles avec le générateur xoshiro256++

```matlab
rng(42, 'xoshiro');
s = rng();
a = rand(1, 3);
rng(s);
b = rand(1, 3);
isequal(a, b)
s.Type
```


## 🔗 Voir aussi

[rand](../random/rand.md), [randn](../random/randn.md), [randi](../random/randi.md), [RandStream](../random/RandStream.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 1.15.0   | Nouveau générateur de nombres aléatoires : simdTwister, combRecursive, philox |
| 2.0.0   | Nouveaux générateurs de nombres aléatoires : pcg (pcg64dxsm) et xoshiro (xoshiro256pp) |

<!--
## 👤 Auteur

Allan CORNET
-->
