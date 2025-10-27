# dlyap

Équations de Lyapunov en temps discret.

## 📝 Syntaxe

- X = dlyap(A, Q)

## 📥 Argument d'entrée

- A - matrice réelle
- Q - matrice réelle

## 📤 Argument de sortie

- X - matrice : solution de l'équation de Lyapunov en temps discret.

## 📄 Description

<b>X = dlyap(A, Q)</b> résout l'équation de Lyapunov en temps discret.

## 💡 Exemple

```matlab
A = [10, 20; -30, -40];
Q = [30, 10; 10, 10];
X = dlyap (A, Q)
```

## 🔗 Voir aussi

[lyap](../control_system/lyap.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
