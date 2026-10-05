# rowexch

Plan D-optimal par echange de lignes.

## 📝 Syntaxe

- dRE = rowexch(nfactors, nruns)
- [dRE, X] = rowexch(nfactors, nruns, modelspec)

## 📄 Description


<b>rowexch</b> genere des candidats avec candgen et selectionne un sous-ensemble D-optimal avec candexch.

## Fonction(s) utilisée(s)


    candgen
    candexch
    cordexch
    rng
  

## 💡 Exemples

Creer un plan D-optimal de trois essais depuis des lignes candidates.

```matlab
rng(5);
[dRE, X] = rowexch(2, 3, 'linear', 'Display', 'off', 'AvoidDuplicates', true);
dRE
X
```
Utiliser des niveaux de facteurs bornes.

```matlab
rng(6);
bounds = [0 1; -1 1];
[dRE, X] = rowexch(2, 3, 'linear', 'Bounds', bounds, 'Display', 'off')
```
