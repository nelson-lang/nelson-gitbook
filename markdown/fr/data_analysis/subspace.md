# subspace

Mesure de distance (angle) entre deux sous-espaces engendrés par les colonnes de matrices.

## 📝 Syntaxe

- d = subspace(A, B)

## 📥 Argument d'entrée

- A - matrice dont les colonnes engendrent le premier sous-espace (réel ou complexe).
- B - matrice dont les colonnes engendrent le second sous-espace (réel ou complexe).

## 📤 Argument de sortie

- d - mesure scalaire de la distance entre les espaces colonnes de A et B. d = 0 indique des sous-espaces identiques ; des valeurs plus grandes indiquent une plus grande séparation.

## 📄 Description


<b>subspace</b> calcule une mesure scalaire de la distance entre les sous-espaces engendrés par les colonnes des matrices <b>A</b> et <b>B</b>. La valeur est dérivée des angles principaux entre les deux sous-espaces (calculés à partir de bases orthonormales des espaces colonnes). Cette mesure est utile pour quantifier la proximité de deux espaces colonnes ; elle est nulle lorsque les sous-espaces coïncident.

## Fonction(s) utilisée(s)

orth

## 💡 Exemple



```matlab

% Two 2-D subspaces (columns)
A = [1 0; 0 1; 0 0];    % spans e1 and e2
B = [1 0; 0 0; 0 1];    % spans e1 and e3
d = subspace(A, B)
% d > 0 indicating the subspaces are different

```


## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.15.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
