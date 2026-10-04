# finv

Fonction de repartition inverse F

## 📝 Syntaxe

- x = finv(p, v1, v2)

## 📥 Argument d'entrée

- p - tableau numerique reel : probabilites.
- v1 - tableau numerique reel positif ou scalaire : degres de liberte du numerateur.
- v2 - tableau numerique reel positif ou scalaire : degres de liberte du denominateur.

## 📤 Argument de sortie

- x - valeurs inverses de queue inferieure de la distribution F.

## 📄 Description

<b>finv</b> calcule les probabilites inverses de queue inferieure de la distribution F.

## 💡 Exemple

```matlab
p = [0.025 0.5 0.975];
x = finv(p, 5, 20);
```

## 🔗 Voir aussi

[fcdf](../../statistics/fcdf.md), [fpdf](../../statistics/fpdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
