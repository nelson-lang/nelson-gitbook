# subsref

Référence par indice.

## 📝 Syntaxe

- B = subsref(A, S)

## 📥 Argument d'entrée

- A - tableau d'objets indexés
- B - structure d'indexation

## 📤 Argument de sortie

- B - Résultat de l'expression d'indexation

## 📄 Description

<b>B = subsref(A, S)</b> est invoqué lors de l'utilisation de la syntaxe <b>A(i)</b>, <b>A{i}</b> ou <b>A.i</b> avec un objet <b>A</b>.

## 💡 Exemples

Indexation par parenthèses

```matlab
A = magic(5);
S.type='()';
S.subs={1:2,':'};
R = subsref(A, S)
```

Indexation par accolades

```matlab
C = {"one", 2, 'three'};
S = [];
S.type = '{}';
S.subs = {[1 2]};
[R1, R2] = subsref(C, S);
```

Indexation par point

```matlab
A = struct('number', 10);
S = [];
S.type = '.';
S.subs = 'number';
R = subsref(A, S)
```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
