# slicot\_sb10jd

Conversion d'un système d'espace d'état descripteur en forme d'espace d'état régulière.

## 📝 Syntaxe

- [A\_OUT, B\_OUT, C\_OUT, D\_OUT, E\_OUT, NSYS, INFO] = slicot\_sb10jd(A\_IN, B\_IN, C\_IN, D\_IN, E\_IN)

## 📥 Argument d'entrée

- A\_IN - La partie principale N×N de ce tableau doit contenir la matrice d'état A du système descripteur.
- B\_IN - La partie principale N×M de ce tableau doit contenir la matrice d'entrée B du système descripteur.
- C\_IN - La partie principale NP×N de ce tableau doit contenir la matrice de sortie C du système descripteur.
- D\_IN - La partie principale NP×M de ce tableau doit contenir la matrice D du système descripteur.
- E\_IN - La partie principale N×N de ce tableau doit contenir la matrice E du système descripteur.

## 📤 Argument de sortie

- A\_OUT - La partie principale NSYS×NSYS de ce tableau contient la matrice d'état Ad du système converti.
- B\_OUT - La partie principale NSYS×M de ce tableau contient la matrice d'entrée Bd du système converti.
- C\_OUT - La partie principale NP×NSYS de ce tableau contient la matrice de sortie Cd du système converti.
- D\_OUT - La partie principale NP×M de ce tableau contient la matrice Dd du système converti.
- E\_OUT - Ce tableau ne contient aucune information utile.
- NSYS - L'ordre du système d'espace d'état converti.
- INFO - 0 : sortie réussie ; 1 : l'itération pour calculer la décomposition en valeurs singulières n'a pas convergé.

## 📄 Description


convertir le système d'espace d'état descripteur en forme d'espace d'état régulier.

## Fonction(s) utilisée(s)

SB10JD

## 📚 Bibliographie

http://slicot.org/objects/software/shared/doc/SB10JD.html

## 💡 Exemple



```matlab
A_IN = [2 -4; 4 2];
B_IN = [0 -1; 0 0.5];
C_IN = [0 -0.5; 0 -2];
D_IN = [0 0; 0 -1];
E_IN = [1 0; -3 0.5];
[A_OUT, B_OUT, C_OUT, D_OUT, E_OUT, NSYS, INFO] = slicot_sb10jd(A_IN, B_IN, C_IN, D_IN, E_IN)
```


## 🔗 Voir aussi

[slicot_tg01ad](../slicot/slicot_tg01ad.md), [slicot_ag08bd](../slicot/slicot_ag08bd.md), [ss](../control_system/1_dynamic_system_models/ss.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

SLICOT Documentation
-->
