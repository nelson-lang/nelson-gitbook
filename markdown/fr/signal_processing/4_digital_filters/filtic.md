# filtic

Conditions initiales pour filtrage numÃ©rique.

## 📝 Syntaxe

- ZI = filtic(B, A, Y)
- ZI = filtic(B, A, Y, X)

## 📥 Argument d'entrée

- B, A - coefficients du filtre.
- Y - valeurs passÃ©es de sortie.
- X - valeurs passÃ©es d'entrÃ©e.

## 📤 Argument de sortie

- ZI - vecteur de conditions initiales.

## 📄 Description


<b>filtic</b> calcule des conditions initiales compatibles avec le filtrage en forme directe.

## 💡 Exemple



```matlab

zi = filtic([1 1], 1, 3);

```


## 🔗 Voir aussi

[filter](../../elementary_functions/7_indexing_dimensions/filter.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
