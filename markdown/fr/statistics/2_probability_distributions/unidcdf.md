# unidcdf

Fonction de repartition uniforme discrete

## 📝 Syntaxe

- p = unidcdf(x, n)

## 📥 Argument d'entrée

- x - tableau numerique reel.
- n - scalaire entier positif ou tableau : valeur maximale.

## 📤 Argument de sortie

- p - probabilites cumulees.

## 📄 Description

<b>unidcdf</b> calcule les probabilites cumulees de la loi uniforme discrete sur les entiers de 1 a <b>n</b>.

## 💡 Exemple

```matlab
x = 0:6;
p = unidcdf(x, 5);
```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
