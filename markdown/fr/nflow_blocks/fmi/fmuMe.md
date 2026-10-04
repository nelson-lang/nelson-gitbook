# fmuMe

<p align="center">
<img src="fmu.svg"/>
</p>
Intègre une FMU d'échange de modèle avec le solveur NFlow.

## 📝 Syntaxe

- Type de bloc : fmuMe

## 📄 Description

Le bloc <b>FMU (ME)</b> charge l'archive d'échange de modèle sélectionnée par <b>path</b>. NFlow évalue ses dérivées, passages par zéro et événements pendant que le solveur NFlow sélectionné intègre les états continus.

Après l'import, les ports et paramètres suivent les variables exposées par la description du modèle FMU.

## 🔗 Voir aussi

[fmuToBlock](../../nflow_fmi/fmuToBlock.md).
