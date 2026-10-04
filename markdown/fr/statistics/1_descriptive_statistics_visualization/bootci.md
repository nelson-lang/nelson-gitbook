# bootci

Intervalle de confiance bootstrap.

## 📝 Syntaxe

- ci = bootci(nboot, bootfun, d)
- ci = bootci(nboot, bootfun, d1, ..., dN)
- ci = bootci(nboot, {bootfun, d1, ..., dN}, 'Type', type)
- [ci, bootstat] = bootci(...)

## 📥 Argument d'entrée

- nboot - entier positif indiquant le nombre d'echantillons bootstrap.
- bootfun - fonction appliquee a chaque echantillon bootstrap.
- d - vecteur ou matrice numerique ou logique. Les lignes sont tirees avec remise.
- type - type d'intervalle : 'bca', 'normal', 'percentile' ou 'cper'. Les intervalles studentises sont reserves a une implementation future.

## 📤 Argument de sortie

- ci - tableau a deux lignes contenant les bornes inferieures et superieures.
- bootstat - statistiques bootstrap, une ligne par echantillon.

## 📄 Description

<b>bootci</b> tire des echantillons bootstrap avec le generateur aleatoire de Nelson et calcule des intervalles de confiance pour les statistiques renvoyees par une fonction.

## Fonction(s) utilisée(s)

    bootstrp
    jackknife
    statset
    rng

## 💡 Exemple

Intervalle de confiance pour la moyenne.

```matlab
rng('default');
ci = bootci(100, @mean, (1:10)', 'Type', 'percentile')
```
