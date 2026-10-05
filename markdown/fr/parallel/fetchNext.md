# fetchNext

Récupérer les prochaines sorties non lues d'un tableau FevalFuture.

## 📝 Syntaxe

- [idx, y1, ... , ym] = fetchNext(f)
- [idx, y1, ... , ym] = fetchNext(f, timeout)

## 📥 Argument d'entrée

- f - objet FevalFuture
- timeout - durée en secondes : attend au maximum <i>timeout</i> secondes qu'un résultat dans<b>f</b> devienne disponible.

## 📤 Argument de sortie

- idx - Indice dans le tableau FevalFuture, renvoyé comme scalaire entier.
- y1, ... , ym - sorties

## 📄 Description


<b>[idx, y1, ... , ym] = fetchNext(f)</b> récupère l'indice <b>idx</b> du nouvel objet <b>FevalFuture</b> lisible dans le tableau <b>f</b> qui est terminé, ainsi que <b>m</b> résultats de ce FevalFuture en tant que <b>Y1, ... , Ym</b>. 



## 💡 Exemple



```matlab

tic()
N = 100;
for idx = N:-1:1
    F(idx) = parfeval(backgroundPool,str2func('rank'),1,magic(idx));
end
results = zeros(1,N);
for idx = 1:N
    [finishedIdx, result] = fetchNext(F);
    results(finishedIdx) = result;
    disp(sprintf('Result: %d', result));
end
toc()

```


## 🔗 Voir aussi

[parfeval](../parallel/parfeval.md), [fetchOutputs](../parallel/fetchOutputs.md), [backgroundPool](../parallel/backgroundPool.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
