# round

Arrondir à l'entier le plus proche

## 📝 Syntaxe

- C = round(A)
- C = round(A, N)
- C = round(A, N, 'decimals')
- C = round(A, N, 'significant')

## 📥 Argument d'entrée

- A - une variable
- N - nombre de chiffres : entier reel scalaire.
- type - 'decimals' (defaut) ou 'significant'.

## 📤 Argument de sortie

- C - résultat de round.

## 📄 Description

<b>round</b> arrondit les éléments à l'entier le plus proche.

<b>round(A, N)</b> arrondit a <b>N</b> chiffres apres la virgule (<b>N</b> peut etre negatif). Equivalent a <b>round(A, N, 'decimals')</b>.

<b>round(A, N, 'significant')</b> arrondit a <b>N</b> chiffres significatifs ; ici <b>N</b> doit etre positif.

Les entrees sparse single et sparse single complexes sont prises en charge. Seules les entrees non nulles stockees sont arrondies et le resultat conserve le stockage sparse.

## 💡 Exemples

```matlab
round(pi)
```

Arrondi a un nombre de decimales ou de chiffres significatifs.

```matlab
round(3.14159, 2)
round(12345, 2, 'significant')
```

Arrondi au plus proche d'une matrice sparse single.

```matlab
S = sparse(single([1.2 0; -2.7 3.1]));
C = round(S)
```

## 🔗 Voir aussi

[floor](../../elementary_functions/floor.md), [fix](../../elementary_functions/fix.md), [ceil](../../elementary_functions/ceil.md).

## 🕔 Historique

| Version | 📄 Description                                                        |
| ------- | --------------------------------------------------------------------- |
| 1.0.0   | version initiale                                                      |
| 2.0.0   | prise en charge des entrees sparse single et sparse single complexes. |
| 2.0.0   | ajout de round(A, N) et des options 'decimals' / 'significant'.       |

<!--
## 👤 Auteur

Allan CORNET
-->
