# unidinv

Inverse de repartition uniforme discrete

## 📝 Syntaxe

- x = unidinv(p, n)

## 📥 Argument d'entrée

- p - probabilites dans l'intervalle [0, 1].
- n - scalaire entier positif ou tableau : valeur maximale.

## 📤 Argument de sortie

- x - valeurs inverses.

## 📄 Description

<b>unidinv</b> calcule l'inverse de repartition de la loi uniforme discrete sur les entiers de 1 a <b>n</b>.

## 💡 Exemple

```matlab
p = [0 0.1 0.5 1];
x = unidinv(p, 5);
```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
