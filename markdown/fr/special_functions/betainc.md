# betainc

Fonction bêta incomplète

## 📝 Syntaxe

- R = betainc(X, Z, W)
- R = betainc(X, Z, W, tail)

## 📥 Argument d'entrée

- X - une matrice réelle simple ou double. Elle doit être dans l'intervalle fermé [0, 1].
- Z - une matrice réelle simple ou double. Elle doit être non négative.
- W - une matrice réelle simple ou double. Elle doit être non négative.
- tail - une chaîne 'upper' ou 'lower' (par défaut).

## 📤 Argument de sortie

- R - résultat de la fonction betainc.

## 📄 Description

<b>betainc</b> calcule la fonction bêta incomplète.

Tous les tableaux doivent avoir la même taille ou n'importe lequel d'entre eux peut être scalaire.

## 💡 Exemple

```matlab
R = betainc(0.5, 1:10, 3)
```

## 🔗 Voir aussi

[gamma](../special_functions/gamma.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
