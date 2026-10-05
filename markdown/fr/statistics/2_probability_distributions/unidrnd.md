# unidrnd

Nombres aleatoires uniformes discrets

## 📝 Syntaxe

- r = unidrnd(n)
- r = unidrnd(n, sz)
- r = unidrnd(n, sz1, ..., szN)

## 📥 Argument d'entrée

- n - scalaire entier positif ou tableau : valeur maximale.
- sz - scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

## 📤 Argument de sortie

- r - tableau : entiers aleatoires.

## 📄 Description


<b>unidrnd</b> genere des entiers aleatoires uniformes entre 1 et <b>n</b>.

## 💡 Exemple



```matlab
rng(0);
r = unidrnd(5, 2, 3);
```


## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
