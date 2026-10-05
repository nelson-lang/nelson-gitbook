# impzlength

Longueur estimee d'une reponse impulsionnelle.

## 📝 Syntaxe

- N = impzlength(B, A)
- N = impzlength(B, A, tolerance)

## 📥 Argument d'entrée

- B - coefficients du numerateur.
- A - coefficients du denominateur.
- tolerance - tolerance de troncature de la reponse.

## 📤 Argument de sortie

- N - longueur estimee.

## 📄 Description


<b>impzlength</b> retourne une longueur pratique pour les calculs de reponse impulsionnelle.

## 💡 Exemple



```matlab

n = impzlength([1 1], 1);

```


## 🔗 Voir aussi

[impz](../../signal_processing/4_digital_filters/impz.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
