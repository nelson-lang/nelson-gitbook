# minreal

Réalisation minimale ou annulation pôle‑zéro.

## 📝 Syntaxe

- [Am, Bm, Cm, Dm] = minreal(A, B, C, D)
- [Am, Bm, Cm, Dm] = minreal(A, B, C, D, tol)
- sysOut = minreal(sysIn)
- sysOut = minreal(sysIn, tol)

## 📥 Argument d'entrée

- A (n x n) - Représente la matrice de transition d'état du système. Elle décrit comment l'état interne du système évolue dans le temps.
- B (n x m) - Décrit la correspondance entrée-état. Elle montre comment les entrées de contrôle affectent le changement de l'état du système.
- C (p x n) - Représente la correspondance état-sortie. Elle montre comment les variables d'état du système sont liées aux sorties du système.
- D (p x m) - Décrit le passage direct des entrées aux sorties. Dans de nombreux systèmes, cette matrice est nulle car il n'y a pas de passage direct.
- tol - scalaire réel (tolérance).
- sysIn - Modèle LTI.

## 📤 Argument de sortie

- Am, Bm, Cm, Dm - une réalisation minimale du système d'état A, B, C, D.
- sysOut - une réalisation minimale de l'entrée LTI.

## 📄 Description

<b>minreal</b> réduit les modèles d'état en éliminant les états non contrôlables ou non observables.

Dans les fonctions de transfert ou modèles zéro‑pôle‑gain, il annule les paires pôles‑zéros. Le modèle résultant maintient les mêmes caractéristiques de réponse que le modèle original mais avec un ordre minimal.

Lorsque vous utilisez <b>sysOut = minreal(sysIn, tol)</b>, vous pouvez personnaliser la tolérance pour l'élimination des états ou l'annulation des pôles-zéros.

La tolérance par défaut est fixée à sqrt(eps), et l'augmentation de cette valeur entraîne des annulations plus agressives, simplifiant potentiellement davantage le modèle.

Annule les paires pôles‑zéros dans les fonctions de transfert ou modèles zéro‑pôle‑gain pour obtenir une réalisation minimale équivalente.

## 💡 Exemple

```matlab
sysIn = ss([1 0;0 -2], [-1;0], [2 1], 0, 3.2);
sysOut = minreal(sysIn)
```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
