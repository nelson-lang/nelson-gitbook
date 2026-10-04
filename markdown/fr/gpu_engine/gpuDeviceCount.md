# gpuDeviceCount

Nombre de périphériques GPU compatibles.

## 📝 Syntaxe

- n = gpuDeviceCount()

## 📤 Argument de sortie

- n - double : le nombre de périphériques GPU compatibles détectés (0 si aucun).

## 📄 Description

<b>n = gpuDeviceCount()</b> renvoie le nombre de périphériques GPU compatibles disponibles sur le système. La valeur <b>0</b> signifie qu'aucun périphérique pris en charge n'a été trouvé.

## 💡 Exemple

```matlab
gpuDeviceCount()
```

## 🔗 Voir aussi

[gpuDevice](../gpu_engine/gpuDevice.md), [canUseGPU](../gpu_engine/canUseGPU.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
