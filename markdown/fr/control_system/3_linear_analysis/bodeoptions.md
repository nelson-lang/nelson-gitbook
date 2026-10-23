# bodeoptions

Options d'un diagramme de Bode.

## 📝 Syntaxe

- opt = bodeoptions()

## 📤 Argument de sortie

- opt - une structure contenant les options du diagramme de Bode.

## 📄 Description


<b>opt = bodeoptions()</b> renvoie une structure contenant les options du diagramme de Bode avec leurs valeurs par défaut. 

La structure renvoyée peut être passée à <b>bodeplot</b> pour personnaliser le rendu. Les champs pris en compte sont : 

<b>PhaseUnits</b> : <b>'deg'</b> (par défaut) ou <b>'rad'</b>. 

<b>Grid</b> : <b>'off'</b> (par défaut) ou <b>'on'</b>. 

Des champs supplémentaires (<b>FreqUnits</b>, <b>MagUnits</b>, <b>Title</b>, <b>XLabel</b>, <b>YLabel</b>) sont fournis avec des valeurs par défaut afin que l'affectation ne provoque pas d'erreur.

## 💡 Exemple



```matlab
opt = bodeoptions();
opt.PhaseUnits = 'rad';
opt.Grid = 'on'

```


## 🔗 Voir aussi

[bodeplot](../../control_system/3_linear_analysis/bodeplot.md), [bode](../../control_system/3_linear_analysis/bode.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
