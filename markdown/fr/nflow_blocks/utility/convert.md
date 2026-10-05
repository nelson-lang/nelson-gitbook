# convert


<p align="center">
<img src="convert.svg" width="192"/>
</p>
Convertit un signal vers un type de données sélectionné.

## 📝 Syntaxe

- Type de bloc : convert

## 📄 Description


Le bloc <b>Convert</b> convertit chaque élément d'entrée vers <b>OutDataType</b> en conservant les dimensions du signal. 

<b>Rounding</b> contrôle la conversion des valeurs non entières. <b>SaturateOnOverflow</b> sélectionne la saturation plutôt que le bouclage lorsque la plage cible est dépassée.  

<b>Extended Capabilities</b> 

<b>Implementation Sources</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/convert.cpp`

