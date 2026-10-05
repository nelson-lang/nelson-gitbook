# wait

Attendre la complétion des futures.

## 📝 Syntaxe

- wait(f)
- wait(f, state)
- TF = wait(f, state, timeout)

## 📥 Argument d'entrée

- f - objet FevalFuture : scalaire ou tableau.
- state - état d'attente : 'finished' (par défaut) ou 'running'
- timeout - secondes d'attente : scalaire numérique réel.

## 📤 Argument de sortie

- TF - logique : si chaque élément du tableau Future f se termine avant l'expiration du timeout, TF est true. Sinon, TF est false.

## 📄 Description


<b>wait(f)</b> suspend l'exécution jusqu'à ce que chaque élément du tableau Future <b>f</b> soit terminé. 

<b>wait(f, state)</b> suspend l'exécution jusqu'à ce que chaque élément du tableau Future <b>f</b> ait sa propriété 'State' définie sur <i>state</i>. 

<b>tf = wait(f, state, timeout)</b> suspend l'exécution pour un maximum de<i>timeout</i>secondes.

## 💡 Exemple



```matlab
fptr = str2func('pause');
for i = 1:15
 f(i) = parfeval(backgroundPool, fptr, 0, 5);
end
tic()
R = wait(f, 'finished');
toc()
```


## 🔗 Voir aussi

[pause](../core/pause.md), [fetchOutputs](../parallel/fetchOutputs.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
