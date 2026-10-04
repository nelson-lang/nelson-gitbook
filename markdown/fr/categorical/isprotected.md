# isprotected

Determiner si un tableau categoriel est protege.

## 📝 Syntaxe

- tf = isprotected(A)

## 📥 Argument d'entrée

- A - Valeur d'entree.

## 📤 Argument de sortie

- tf - Scalaire logique qui vaut <b>true</b> pour les tableaux categoriels proteges.

## 📄 Description

<b>isprotected</b> indique si un tableau categoriel empeche l'ajout implicite de categories pendant une affectation.

Les tableaux categoriels ordinaux sont automatiquement proteges.

## 💡 Exemple

Creer puis tester un tableau protege.

```matlab
A = categorical({'low','high'}, {'low','high'}, 'Protected', true); tf = isprotected(A)
```

## 🔗 Voir aussi

[categorical](../categorical/categorical.md), [isordinal](../categorical/isordinal.md), [addcats](../categorical/addcats.md), [setcats](../categorical/setcats.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
