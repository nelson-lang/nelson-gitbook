# concatenate


<p align="center">
<img src="concatenate.svg" width="72"/>
</p>
Concatène les signaux d'entrée selon une dimension sélectionnée.

## 📝 Syntaxe

- Type de bloc : concatenate

## 📄 Description


Le bloc <b>Concatenate</b> assemble tous les signaux d'entrée selon <b>ConcatenateDimension</b>. La dimension 1 assemble les lignes, la dimension 2 les colonnes et les valeurs supérieures utilisent une dimension supplémentaire. 

Toutes les dimensions autres que la dimension de concaténation doivent être compatibles.  

<b>Extended Capabilities</b> 

<b>Implementation Sources</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/concatenate.cpp`

