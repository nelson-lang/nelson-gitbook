# chebwin

Fenêtre de Dolph-Chebyshev.

## 📝 Syntaxe

- W = chebwin(M)
- W = chebwin(M, ripple)

## 📥 Argument d'entrée

- M - longueur de la fenêtre.
- ripple - atténuation des lobes secondaires en décibels.

## 📤 Argument de sortie

- W - vecteur colonne contenant la fenêtre.

## 📄 Description

<b>chebwin</b> retourne une fenêtre de Dolph-Chebyshev normalisée à une amplitude maximale unitaire.

## 💡 Exemple

```matlab

w = chebwin(5, 40);

```

## 🔗 Voir aussi

[kaiser](../../signal_processing/kaiser.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
