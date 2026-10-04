# gather

Transfère un gpuArray vers l'espace de travail hôte.

## 📝 Syntaxe

- A = gather(G)

## 📥 Argument d'entrée

- G - un gpuArray, ou toute valeur hôte.

## 📤 Argument de sortie

- A - un tableau hôte avec les mêmes valeurs et le même type sous-jacent.

## 📄 Description

<b>A = gather(G)</b> copie le <b>gpuArray</b> <b>G</b> du périphérique vers l'espace de travail hôte. Le résultat est un tableau <b>single</b>, <b>logical</b> ou <b>single</b> complexe, correspondant au type sous-jacent de <b>G</b>.

Lorsque <b>G</b> est déjà une valeur hôte, <b>gather</b> la renvoie inchangée.

## 💡 Exemple

```matlab
G = gpuArray(single([1 2 3]));
A = gather(G + 1)
```

## 🔗 Voir aussi

[gpuArray](../gpu_engine/gpuArray.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
