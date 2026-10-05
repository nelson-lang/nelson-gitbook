# nbininv

Inverse de repartition binomiale negative

## 📝 Syntaxe

- x = nbininv(y, r, p)

## 📥 Argument d'entrée

- y - probabilites dans l'intervalle [0, 1].
- r - scalaire positif ou tableau : nombre de succes.
- p - scalaire ou tableau dans l'intervalle [0, 1] : probabilite de succes.

## 📤 Argument de sortie

- x - valeurs inverses.

## 📄 Description


<b>nbininv</b> calcule l'inverse de repartition de la loi binomiale negative.

## 💡 Exemple



```matlab
y = [0.1 0.5 0.9];
x = nbininv(y, 3, 0.4);
```


## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
