# cancelAll

Arrêter toutes les fonctions s'exécutant en arrière-plan.

## 📝 Syntaxe

- cancelAll(fevalQueue)

## 📥 Argument d'entrée

- fevalQueue - objet FevalQueue : scalaire.

## 📄 Description

<b>cancelAll(fevalQueue)</b> arrête tous les éléments en cours d'exécution ou en file d'attente du pool d'arrière-plan.

## 💡 Exemple

```matlab
fptr = str2func('pause');
pool = backgroundPool;
pool.FevalQueue
f = parfeval(pool, fptr, 0, Inf);
f
pool.FevalQueue
cancelAll(pool.FevalQueue)
pool.FevalQueue
f
```

## 🔗 Voir aussi

[pause](../core/pause.md), [cancel](../parallel/cancel.md), [parfeval](../parallel/parfeval.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
