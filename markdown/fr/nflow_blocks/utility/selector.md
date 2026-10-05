# selector


<p align="center">
<img src="selector.svg" width="192"/>
</p>
Sélectionne des éléments du signal d'entrée avec des indices commençant à un.

## 📝 Syntaxe

- Type de bloc : selector

## 📄 Description


Le bloc <b>Selector</b> copie dans sa sortie les éléments indiqués par <b>Indices</b>. Les indices commencent à un et la largeur de sortie correspond au nombre d'indices sélectionnés. 

Un indice hors de la plage d'entrée est ramené vers l'élément valide le plus proche.  

<b>Extended Capabilities</b> 

<b>Implementation Sources</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/selector.cpp`

