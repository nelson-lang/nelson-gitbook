# tf2ss

Convertit les paramètres d'un filtre en fonction de transfert en forme état-espace.

## 📝 Syntaxe

- [A, B, C, D] = tf2ss(b, a)

## 📥 Argument d'entrée

- b - Coefficients du numérateur de la fonction de transfert : vecteur ou matrice.
- a - Coefficients du dénominateur de la fonction de transfert : vecteur.

## 📤 Argument de sortie

- A (n x n) - Représente la matrice d'état-transition du système. Elle décrit comment l'état interne du système évolue dans le temps.
- B (n x m) - Décrit le mapping entrée-état. Il montre comment les entrées de contrôle affectent le changement de l'état du système.
- C (p x n) - Représente le mapping état-sortie. Il montre comment les variables d'état du système sont liées aux sorties du système.
- D (p x m) - Décrit le passage direct des entrées aux sorties. Dans de nombreux systèmes, cette matrice est nulle car il n'y a pas de passage direct.

## 📄 Description

Convertit un numérateur et un dénominateur de fonction de transfert en matrices d'état A, B, C, D.

## 💡 Exemple

```matlab
Fs = 6;
dt = 1/Fs;
b = [1 -(1+cos(dt)) cos(dt)];
a = [1 -3*cos(dt) 1];
[A, B, C, D] = tf2ss(b, a)

```

## 🔗 Voir aussi

[ss2tf](../control_system/ss2tf.md), [ss](../control_system/ss.md), [tf](../control_system/tf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
