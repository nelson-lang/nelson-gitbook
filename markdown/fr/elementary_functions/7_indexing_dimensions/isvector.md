# isvector

Vérifie si l'entrée est un vecteur.

## 📝 Syntaxe

- tf = isvector(M)

## 📥 Argument d'entrée

- M - une variable

## 📤 Argument de sortie

- tf - logique : résultat de 'isvector'.

## 📄 Description


<b>isvector</b> renvoie un logique scalaire indiquant si l'entrée est un vecteur.

## 💡 Exemple



```matlab
A = eye(3, 3);
R = isvector(A)
R = isvector(A(:,1))
```


## 🔗 Voir aussi

[isempty](../../types/isempty.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
