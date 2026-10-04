# unifinv

Fonction de repartition inverse uniforme continue

## 📝 Syntaxe

- x = unifinv(p)
- x = unifinv(p, a, b)

## 📥 Argument d'entrée

- p - tableau numerique reel de probabilites.
- a - borne inferieure, 0 par defaut.
- b - borne superieure, 1 par defaut.

## 📤 Argument de sortie

- x - valeurs inverses de queue inferieure uniforme continue.

## 📄 Description

<b>unifinv</b> calcule les probabilites inverses de queue inferieure de la distribution uniforme continue.

## 💡 Exemple

```matlab
p = [0.25 0.5 0.75];
x = unifinv(p, -1, 1);
```

## 🔗 Voir aussi

[unifcdf](../../statistics/unifcdf.md), [unifpdf](../../statistics/unifpdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
