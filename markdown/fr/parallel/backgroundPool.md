# backgroundPool

Environnement pour exécuter du code Nelson en arrière-plan.

## Syntaxe

- pool = backgroundPool()

## Argument de sortie

- pool - objet backgroundPool.

## Description

<p>pool = backgroundPool() renvoie le pool en arrière-plan.</p>

<p>Ceci permet d'exécuter d'autres codes dans votre session Nelson en parallèle.</p>

<p></p>

<p>Propriétés de l'objet backgroundPool :</p>

<p>'FevalQueue' : file d'attente d'objets FevalFuture à exécuter dans le pool (lecture seule).</p>

<p>'NumWorkers' : nombre de workers (lecture seule).</p>

<p>'Busy' : indicateur logique indiquant si le pool est occupé (lecture seule).</p>

## Exemple

```matlab
b = backgroundPool()
fptr = str2func('magic');
f = parfeval(b, fptr, 1, 9);
```

## Voir aussi

[parfeval](../parallel/parfeval.md), [fetchOutputs](../parallel/fetchOutputs.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |
