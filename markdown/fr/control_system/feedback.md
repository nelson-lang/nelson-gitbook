# feedback

Connexion en boucle fermée de plusieurs modèles.

## 📝 Syntaxe

- sys = feedback(sys1, sys2)
- sys = feedback(sys1, sys2, sign)

## 📥 Argument d'entrée

- sys1, sys2 - Modèles LTI : Systèmes à connecter en boucle de rétroaction.
- sign - Type de rétroaction : -1 (par défaut) ou +1.

## 📤 Argument de sortie

- sys - Système en boucle fermée.

## 📄 Description

<b>sys = feedback(sys1, sys2)</b> génère un objet modèle, <b>sys</b>, représentant l'interconnexion en rétroaction négative des objets modèle <b>sys1</b> et <b>sys2</b>.

## 💡 Exemple

```matlab
G = tf([2 5 1], [1 2 3]);
C = tf([5, 10], [1, 10]);
sys = feedback(G, C, +1)

```

## 🔗 Voir aussi

[cloop](../control_system/cloop.md), [append](../control_system/append.md), [ssselect](../control_system/ssselect.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
