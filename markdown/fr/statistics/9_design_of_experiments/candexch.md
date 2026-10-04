# candexch

Selection D-optimale de lignes depuis un ensemble candidat.

## 📝 Syntaxe

- rlist = candexch(C, nrows)
- rlist = candexch(C, nrows, 'Name', value)

## 📥 Argument d'entrée

- C - matrice candidate. Chaque ligne represente un essai candidat.
- nrows - entier positif indiquant le nombre de lignes a selectionner.

## 📤 Argument de sortie

- rlist - indices des lignes selectionnees dans C.

## 📄 Description

<b>candexch</b> selectionne des lignes dans une matrice candidate avec une recherche par echange de lignes qui ameliore le determinant de X' \* X.

Les options nom-valeur prises en charge sont 'AvoidDuplicates', 'Display', 'InitialDesign', 'MaxIterations', 'Options', 'FixedRows' et 'NumTries'. Les champs d'options paralleles sont acceptes et l'execution reste serie.

## Fonction(s) utilisée(s)

    candgen
    rowexch
    cordexch
    daugment

## 💡 Exemple

Selectionner deux lignes dans un ensemble candidat.

```matlab
C = [ones(4, 1) (0:3)'];
rlist = candexch(C, 2, 'Display', 'off', 'AvoidDuplicates', true)
```
