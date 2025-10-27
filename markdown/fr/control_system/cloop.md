# cloop

Connexion en boucle fermée de plusieurs modèles.

## 📝 Syntaxe

- model = cloop(sys)
- model = cloop(sys, sign)
- model = cloop(sys, outputs, inputs)

## 📥 Argument d'entrée

- sys - Modèle LTI.
- sign - Type de rétroaction : -1 (par défaut) ou +1.
- outputs - indices vectoriels dans les sorties.
- inputs - indices vectoriels dans les entrées.

## 📤 Argument de sortie

- sys - Système en boucle fermée.

## 📄 Description

<b>cloop</b> forme le système en boucle fermée lorsque la rétroaction unitaire est utilisée.

Cette fonction est obsolète et a des limitations, veuillez voir <b>feedback</b>. Elle n'est applicable que lorsque le bloc dans le chemin de rétroaction est unitaire. De plus, son utilisation est limitée aux modèles de système exprimés uniquement sous forme de fonction de transfert, et non sous la forme plus générale "system".

## 💡 Exemple

```matlab
m = 1000;
b = 50;
u = 500;
A = [0 1; 0 -b/m];
B = [0; 1/m];
C = [0 1];
D = 0;
OUTPUTS = -1;
INPUTS = 1;
sys = ss(A, B, C, D);

R = cloop(sys, OUTPUTS, INPUTS)

```

## 🔗 Voir aussi

[feedback](../control_system/feedback.md), [append](../control_system/append.md), [ssselect](../control_system/ssselect.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
