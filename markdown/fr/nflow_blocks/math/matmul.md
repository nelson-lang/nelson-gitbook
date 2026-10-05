# matmul


<p align="center">
<img src="matmul.svg" width="72"/>
</p>
Multiplie deux signaux matriciels ou applique une multiplication élément par élément.

## 📝 Syntaxe

- Type de bloc : matmul

## 📄 Description


Le bloc <b>MatMul</b> possède deux entrées et une sortie. Avec <b>MultiplicationRule</b> défini sur <b>matrix</b>, il calcule le produit matriciel A \* B. Avec <b>elementwise</b>, il multiplie les éléments correspondants. 

Les dimensions doivent être compatibles avec la règle sélectionnée. Les scalaires sont étendus lorsque les règles de disposition des signaux le permettent.  

<b>Extended Capabilities</b> 

<b>Implementation Sources</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/matrix/matmul.cpp`



## 🔗 Voir aussi

[mult](../../nflow_blocks/math/mult.md).