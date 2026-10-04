# idivide

Division entiere avec option d'arrondi.

## 📝 Syntaxe

- C = idivide(A, B)
- C = idivide(A, B, opt)

## 📥 Argument d'entrée

- A, B - tableaux entiers (au moins un doit appartenir a une classe entiere).
- opt - regle d'arrondi : 'fix' (defaut), 'round', 'floor' ou 'ceil'.

## 📤 Argument de sortie

- C - resultat de la division entiere.

## 📄 Description

<b>idivide(A, B)</b> divise <b>A</b> par <b>B</b> et arrondit le resultat vers zero (<b>'fix'</b>), en conservant la classe entiere des entrees.

Utilisez <b>opt</b> pour choisir une autre regle d'arrondi : <b>'round'</b>, <b>'floor'</b> ou <b>'ceil'</b>.

## 💡 Exemple

```matlab
idivide(int32(7), int32(2))
idivide(int32(7), int32(2), 'ceil')
```

## 🔗 Voir aussi

[mod](../../elementary_functions/mod.md), [rem](../../elementary_functions/rem.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
