# gamma

Fonction spéciale gamma

## 📝 Syntaxe

- R = gamma(M)

## 📥 Argument d'entrée

- M - une matrice réelle simple ou double.

## 📤 Argument de sortie

- R - résultat de la fonction gamma.

## 📄 Description

<b>gamma</b> calcule la fonction gamma.

La fonction gamma est définie par l'intégrale :
$$\Gamma(z) = \int_0^{\infty} t^{z-1} e^{-t} \, dt$$

pour
$$\text{Re}(z) > 0$$

La fonction gamma étend la fonction factorielle aux nombres réels et complexes :
$$\Gamma(n) = (n-1)!$$

pour les entiers positifs
$$n$$

Propriétés importantes :

- $$\Gamma(z+1) = z\Gamma(z)$$
  (relation de récurrence)
- $$\Gamma(1/2) = \sqrt{\pi}$$

## 💡 Exemple

```matlab
R = gamma([-pi:0.1:pi])
```

## 🔗 Voir aussi

[gammaln](../special_functions/gammaln.md), [factorial](../elementary_functions/factorial.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
