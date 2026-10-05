# canUseGPU

Indique si un GPU compatible est disponible.

## 📝 Syntaxe

- tf = canUseGPU()

## 📤 Argument de sortie

- tf - logique : true lorsqu'un périphérique GPU compatible est disponible.

## 📄 Description


<b>tf = canUseGPU()</b> renvoie <b>true</b> lorsqu'un périphérique GPU compatible est présent et utilisable, et <b>false</b> sinon (par exemple sur une machine sans backend Vulkan, Metal ou Direct3D 12 pris en charge). 

Utilisez-le pour écrire du code qui s'exécute sur le GPU lorsque c'est possible et retombe sur le CPU sinon.

## 💡 Exemple



```matlab
if canUseGPU()
  A = gpuArray(single(rand(1000)));
else
  A = single(rand(1000));
end
```


## 🔗 Voir aussi

[gpuDevice](../gpu_engine/gpuDevice.md), [gpuDeviceCount](../gpu_engine/gpuDeviceCount.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
