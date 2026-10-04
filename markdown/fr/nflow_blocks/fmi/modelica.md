# modelica

<p align="center">
<img src="modelica.svg"/>
</p>
Compile un modèle Modelica et l'utilise comme bloc NFlow.

## 📝 Syntaxe

- Type de bloc : modelica

## 📄 Description

Le bloc <b>Modelica</b> utilise un <b>source</b> intégré ou un <b>file</b> Modelica, puis sélectionne <b>modelName</b>. Avant la simulation, NFlow compile le modèle sous forme de FMU.

Une installation OpenModelica fonctionnelle est nécessaire. Les erreurs de compilation et de modèle sont publiées dans Diagnostics.

## 🔗 Voir aussi

[modelicaToFmu](../../nflow_fmi/modelicaToFmu.md).
