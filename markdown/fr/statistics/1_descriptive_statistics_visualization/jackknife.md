# jackknife

Statistiques jackknife.

## 📝 Syntaxe

- jackstat = jackknife(jackfun, X)
- jackstat = jackknife(jackfun, X, Y, ...)
- jackstat = jackknife(..., 'Options', options)

## 📄 Description


<b>jackknife</b> evalue une fonction sur des echantillons obtenus en supprimant une observation.

## Fonction(s) utilisée(s)


    bootstrp
    bootci
    statset
  

## 💡 Exemples

Calculer les estimations leave-one-out de la moyenne.

```matlab
x = (1:5)';
jackstat = jackknife(@mean, x)
```
Retourner plusieurs statistiques pour chaque echantillon jackknife.

```matlab
x = (1:5)';
jackstat = jackknife(@jackknifeStats, x)

function y = jackknifeStats(x)
  y = [mean(x) std(x)];
end
```
