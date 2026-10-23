# randg

Nombre aléatoire distribué selon une loi gamma.

## 📝 Syntaxe

- M = randg
- M = randg(A)
- M = randg(A, n)
- M = randg(A, x1, x2, ... , xN)
- M = randg(A, sz)
- M = randg(A, x1, x2, ... , xN, classname)

## 📥 Argument d'entrée

- A - une valeur ou un tableau réel positif ou nul : le ou les paramètres de forme.
- n - une variable : une matrice n-par-n sera générée.
- x1, x2, ... , xN - valeurs x1-par-...-par-xN
- classname - une chaîne : 'single' ou 'double'

## 📤 Argument de sortie

- M - une matrice de nombres aléatoires.

## 📄 Description


<b>randg</b> renvoie une matrice dont les éléments suivent une loi gamma, de paramètre de forme <b>A</b> et d'échelle unitaire. 

Un tirage gamma de forme <b>k</b> a pour moyenne <b>k</b> et pour variance <b>k</b> ; une forme de 1 donne la loi exponentielle standard. 

Lorsque seul <b>A</b> est fourni, le résultat a la taille de <b>A</b> et chaque élément utilise la forme correspondante. Lorsqu'une taille est fournie, <b>A</b> doit être un scalaire utilisé pour tous les éléments. 

Les valeurs sont tirées par la méthode de rejet de Marsaglia et Tsang ; la graine (seed) peut être modifiée avec <b>rng</b>.

## 📚 Bibliographie

G. Marsaglia et W. W. Tsang, "A simple method for generating gamma variables", ACM Transactions on Mathematical Software, 26(3), 363-372, 2000.

## 💡 Exemples



```matlab
rng('default');
randg

```


```matlab
rng('default');
randg(2, 3)

```


```matlab
rng('default');
M = randg(3, 1, 100000);
[mean(M), var(M)]

```


```matlab
rng('default');
randg(2, 2, 2, 'single')

```


## 🔗 Voir aussi

[rand](../random/rand.md), [randn](../random/randn.md), [rng](../random/rng.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
