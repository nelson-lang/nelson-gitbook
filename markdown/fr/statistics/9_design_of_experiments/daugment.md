# daugment

Augmenter un plan D-optimal.

## 📝 Syntaxe

- dCE2 = daugment(dCE, mruns)
- [dCE2, X] = daugment(dCE, mruns, modelspec)

## 📄 Description


<b>daugment</b> augmente un plan existant en selectionnant des lignes supplementaires depuis les candidats generes.

## Fonction(s) utilisée(s)


    candgen
    candexch
    rowexch
    rng
  

## 💡 Exemples

Ajouter deux essais a un plan existant.

```matlab
rng(8);
dCE = [-1 -1];
[dCE2, X] = daugment(dCE, 2, 'linear', 'Display', 'off', 'AvoidDuplicates', true);
dCE2
X
```
Augmenter un plan avec des niveaux candidats bornes.

```matlab
dCE = [0 0];
bounds = [0 1; 0 1];
[dCE2, X] = daugment(dCE, 2, 'quadratic', 'Bounds', bounds, 'Display', 'off')
```
