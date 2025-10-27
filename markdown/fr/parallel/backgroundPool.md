# backgroundPool

Environnement pour exécuter du code Nelson en arrière-plan.

## 📝 Syntaxe

- pool = backgroundPool()

## 📤 Argument de sortie

- pool - objet backgroundPool.

## 📄 Description

<b>pool = backgroundPool()</b> renvoie le pool en arrière-plan.

Ceci permet d'exécuter d'autres codes dans votre session Nelson en parallèle.

Propriétés de l'objet backgroundPool :

'FevalQueue' : file d'attente d'objets FevalFuture à exécuter dans le pool (lecture seule).

'NumWorkers' : nombre de workers (lecture seule).

'Busy' : indicateur logique indiquant si le pool est occupé (lecture seule).

## 💡 Exemple

```matlab
b = backgroundPool()
fptr = str2func('magic');
f = parfeval(b, fptr, 1, 9);
```

## 🔗 Voir aussi

[parfeval](../parallel/parfeval.md), [fetchOutputs](../parallel/fetchOutputs.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |
