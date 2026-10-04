# istriu

Vérifie si une matrice est triangulaire supérieure.

## 📝 Syntaxe

- tf = istriu(M)

## 📥 Argument d'entrée

- M - un tableau numérique

## 📤 Argument de sortie

- tf - logique : résultat de 'istriu'.

## 📄 Description

<b>istriu</b> renvoie un logique scalaire indiquant si l'entrée est triangulaire supérieure.

## 💡 Exemple

```matlab
A = eye(3, 3);
R = istriu(A)
R = istriu(A(:,1))
```

## 🔗 Voir aussi

[isdiag](../../elementary_functions/7_indexing_dimensions/isdiag.md), [istril](../../elementary_functions/istril.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
