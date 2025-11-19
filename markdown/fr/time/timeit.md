# timeit

Mesure le temps nécessaire à l'exécution d'une fonction.

## 📝 Syntaxe

- t = timeit(f)
- t = timeit(f, nLhs)
- t = timeit(f, nLhs, x1, ..., xm)

## 📥 Argument d'entrée

- f - handle de fonction : fonction à exécuter.
- nLhs - entier : nombre d'arguments de sortie (1 par défaut).
- x1, ..., xm - arguments d'entrée : liste séparée par des virgules de variables ou d'expressions.

## 📤 Argument de sortie

- t - temps (en secondes).

## 📄 Description

<b>t = timeit(f)</b> mesure le temps nécessaire à l'exécution de la fonction indiquée par le handle de fonction<b>f</b>.

Pour obtenir une mesure robuste,<b>timeit</b> appelle la fonction plusieurs fois et renvoie la médiane des mesures.

Si la fonction est rapide,<b>timeit</b> pourra appeler la fonction de nombreuses fois.

## 💡 Exemples

```matlab

f = str2func('@()sleep(6)');
tic();t = timeit(f), toc()
```

```matlab
X = rand(100);
f = str2func('@(X) svd(X);');
tic(), t1 = timeit(f, 1, X), toc()
tic(), t2 = timeit(f, 3, X), toc()
```

## 🔗 Voir aussi

[tic](../time/tic.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
