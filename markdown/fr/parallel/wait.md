# wait

Attendre la complétion des futures.

## Syntaxe

- wait(f)
- wait(f, state)
- TF = wait(f, state, timeout)

## Argument d'entrée

- f - objet FevalFuture : scalaire ou tableau.
- state - état d'attente : 'finished' (par défaut) ou 'running'
- timeout - secondes d'attente : scalaire numérique réel.

## Argument de sortie

- TF - logique : si chaque élément du tableau Future f se termine avant l'expiration du timeout, TF est true. Sinon, TF est false.

## Description

<p>wait(f) suspend l'exécution jusqu'à ce que chaque élément du tableau Future f soit terminé.</p>

<p>wait(f, state) suspend l'exécution jusqu'à ce que chaque élément du tableau Future f ait sa propriété 'State' définie sur state.</p>

<p>tf = wait(f, state, timeout) suspend l'exécution pour un maximum de timeout secondes.</p>

## Exemple

```matlab
fptr = str2func('pause');
for i = 1:15
 f(i) = parfeval(backgroundPool, fptr, 0, 5);
end
tic()
R = wait(f, 'finished');
toc()
```

## Voir aussi

[pause](../core/pause.md), [fetchOutputs](../parallel/fetchOutputs.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
