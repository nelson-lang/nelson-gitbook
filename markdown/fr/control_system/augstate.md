# augstate

Ajoute le vecteur d'état au vecteur de sortie.

## 📝 Syntaxe

- sysa = augstate(sys)
- [Aa, Ba, Ca, Da] = augstate(A, B, C, D)

## 📥 Argument d'entrée

- sys - Modèle LTI.

## 📤 Argument de sortie

- sysa - Modèle d'espace d'état avec états ajoutés aux sorties.

## 📄 Description

La fonction <b>sysa = augstate(sys)</b> ajoute le vecteur d'état aux sorties d'un modèle d'espace d'état.

## 💡 Exemple

```matlab
sys = ss(10, 10, 20, 0);
sysa = augstate(sys)
```

## 🔗 Voir aussi

[feedback](../control_system/feedback.md), [series](../control_system/series.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
