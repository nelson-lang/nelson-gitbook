# flipdim

Inverser un tableau selon une dimension spécifiée

## 📝 Syntaxe

- B = flipdim(A, dim)

## 📥 Argument d'entrée

- A - un tableau
- dim - un entier positif

## 📤 Argument de sortie

- B - flipped array.

## 📄 Description

<b>flipdim</b> renvoie un nouveau tableau de <b>A</b> inversé selon la dimension <b>dim</b>.

<b>flipdim</b> est similaire à<b>flip</b> et reste disponible pour compatibilité avec d'anciens scripts.

## 💡 Exemple

```matlab
x = eye(3, 2);
y = flipdim(x, 1)
y = flipdim(x, 2)
y = flipdim(x, 3)
```

## 🔗 Voir aussi

[flip](../elementary_functions/flip.md), [flipud](../elementary_functions/flipud.md), [fliplr](../elementary_functions/fliplr.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
