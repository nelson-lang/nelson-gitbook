# padecoef

Calcule l'approximation de Padé des délais temporels.

## 📝 Syntaxe

- [numerator, denominator] = padecoef(T, N)
- [numerator, denominator] = padecoef(T)

## 📥 Argument d'entrée

- T - Délai temporel : un scalaire réel positif.
- N - Ordre de l'approximation : un scalaire réel positif (par défaut N = 1).

## 📤 Argument de sortie

- numerator - polynômes d'ordre N : vecteur ligne.
- denominator - polynômes d'ordre N : vecteur ligne.

## 📄 Description

<b>padecoef(T, N)</b> calcule l'approximation de Padé d'ordre N pour le système à retard en temps continu représenté par le terme exponentiel exp(-T\*s) et le renvoie sous la forme d'une fonction de transfert.

Voir http://en.wikipedia.org/wiki/Pad%C3%A9_approximant et Golub & Van Loan, Matrix Computations pour les détails.

## 📚 Bibliographie

http://en.wikipedia.org/wiki/Pad%C3%A9_approximant et Golub and Van Loan, Matrix Computations, Johns Hopkins University Press (Third edition, page 562).

## 💡 Exemple

```matlab
T = 2; N = 4;
[numerator, denominator] = padecoef(T, N)
```

## 🔗 Voir aussi

[tf](../control_system/tf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
