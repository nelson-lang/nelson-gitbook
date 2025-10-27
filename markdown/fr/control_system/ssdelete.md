# ssdelete

Supprime des entrées, sorties et états d'un système en espace d'état.

## 📝 Syntaxe

- sysOut = ssselect(sysIn, INPUTS, OUTPUTS)
- sysOut = ssselect(sysIn, INPUTS, OUTPUTS, STATES)

## 📥 Argument d'entrée

- sysIn - modèle en espace d'état
- INPUTS - index des entrées du système
- OUTPUTS - index des sorties du système
- STATES - états supprimés du système.

## 📤 Argument de sortie

- sysOut - modèle en espace d'état : sous-système avec entrées, sorties et états supprimés.

## 📄 Description

Permet de retirer des entrées, sorties ou états d'un système d'état pour obtenir un sous-système.

## 💡 Exemple

```matlab
A = [33,2,5; 23,200,2; 9,2,45];
B = [4,5; 12,5; 82,1];
C = [34,56,2; 6,2,112];
D = [2,0; 0,19];
sys1 = ss(A, B, C, D);
inputs = 1;
outputs = 1;

R = ssdelete(sys1, inputs, outputs)
```

## 🔗 Voir aussi

[ssselect](../control_system/ssselect.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
