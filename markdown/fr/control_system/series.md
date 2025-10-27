# series

Connexion en série de deux modèles.

## 📝 Syntaxe

- sys = series(sys1, sys2)
- sys = series(sys1, sys2, outputs1, inputs2)

## 📥 Argument d'entrée

- sys1, sys2 - Modèles LTI.
- outputs1 - vecteurs d'index
- inputs2 - vecteurs d'index

## 📤 Argument de sortie

- sys - Modèle LTI.

## 📄 Description

Connecte deux systèmes en série. Les systèmes doivent être tous deux continus ou discrets et avoir le même temps d'échantillonnage.

Les gains statiques sont considérés comme neutres et peuvent être définis par des matrices classiques.

## 💡 Exemple

```matlab
[A, B, C, D] = ord2(1, 3);
sys1 = ss(A, B, C, D);
[A, B, C, D] = ord2(3, 6);
sys2 = ss(A, B, C, D)
outputs1 = 1;
inputs2 = 1;
sys = series(sys1, sys2, outputs1, inputs2)

```

## 🔗 Voir aussi

[feedback](../control_system/feedback.md), [append](../control_system/append.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
