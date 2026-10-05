# isgpuarray

Indique si une valeur est un gpuArray.

## 📝 Syntaxe

- tf = isgpuarray(A)

## 📥 Argument d'entrée

- A - une valeur quelconque.

## 📤 Argument de sortie

- tf - logique : true lorsque <b>A</b> est un gpuArray.

## 📄 Description


<b>tf = isgpuarray(A)</b> renvoie <b>true</b> lorsque <b>A</b> est un <b>gpuArray</b> stocké sur le périphérique, et <b>false</b> sinon.

## 💡 Exemple



```matlab
isgpuarray(gpuArray(single(1)))
isgpuarray(single(1))
```


## 🔗 Voir aussi

[gpuArray](../gpu_engine/gpuArray.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
