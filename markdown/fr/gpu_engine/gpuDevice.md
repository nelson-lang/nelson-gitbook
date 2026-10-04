# gpuDevice

Interroge le périphérique GPU sélectionné.

## 📝 Syntaxe

- d = gpuDevice()

## 📤 Argument de sortie

- d - une structure décrivant le périphérique GPU sélectionné.

## 📄 Description

<b>d = gpuDevice()</b> renvoie une structure décrivant le périphérique GPU sélectionné, avec les champs suivants :

<b>Index</b> : l'indice du périphérique.

<b>Name</b> : le nom de l'adaptateur.

<b>Vendor</b> : le fabricant du matériel.

<b>Architecture</b> : l'architecture du périphérique.

<b>Backend</b> : le backend graphique utilisé (Vulkan, Metal ou D3D12).

<b>MaxBufferSize</b> : la taille maximale en octets d'un tampon unique du périphérique.

Une erreur est déclenchée lorsqu'aucun périphérique GPU compatible n'est disponible.

## 💡 Exemple

```matlab
if canUseGPU()
  d = gpuDevice()
end
```

## 🔗 Voir aussi

[gpuDeviceCount](../gpu_engine/gpuDeviceCount.md), [canUseGPU](../gpu_engine/canUseGPU.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
