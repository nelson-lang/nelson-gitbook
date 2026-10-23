# fmu


<p align="center">
<img src="fmu.svg" width="80"/>
</p>
Exécute une FMU de co-simulation dans un diagramme NFlow.

## 📝 Syntaxe

- Type de bloc : fmu

## 📄 Description


La version navigateur WebAssembly prend en charge les composants FMI 3.0 Co-Simulation dans binaries/wasm32-wasip2, avec des ports vectoriels numériques et booléens. Utilisez Browse FMU pour importer une archive. Les démos de référence contiennent les binaires natifs et Wasm. 

Le bloc <b>FMU (CS)</b> charge l'archive sélectionnée par <b>path</b> et avance son instance de co-simulation avec la simulation NFlow. 

Après l'import, les ports et paramètres du bloc suivent les variables exposées par la description du modèle FMU. 


## 🔗 Voir aussi

[fmuToBlock](../../nflow_fmi/fmuToBlock.md).