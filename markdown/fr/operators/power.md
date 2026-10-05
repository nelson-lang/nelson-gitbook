# power

Puissance élément par élément, opérateur .^

## 📝 Syntaxe

- C = power(A, B)
- C = A .^ B

## 📥 Argument d'entrée

- A - une variable
- B - une variable

## 📤 Argument de sortie

- C - résultat de A.^B

## 📄 Description


<b>C = power(A, B)</b> effectue une opération de puissance élément par élément : A .^ B. 

Les entrees sparse single et sparse single complexes sont prises en charge quand l'exposant est scalaire ou compatible en taille. Les zeros implicites du sparse restent implicites pour les exposants qui conservent une valeur nulle. 

Si un exposant rend les zeros implicites non nuls, par exemple l'exposant 0 ou un exposant negatif, Nelson materialise les entrees correspondantes du motif sparse.

## 💡 Exemples



```matlab
power(3, 4)
3.^4
```
Puissance element par element sur une matrice sparse single.

```matlab
S = sparse(single([1 0; 2 3]));
C = S .^ single(2)
```


## 🔗 Voir aussi

[mpower](../operators/mpower.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | prise en charge des entrees sparse single et sparse single complexes. |

<!--
## 👤 Auteur

Allan CORNET
-->
