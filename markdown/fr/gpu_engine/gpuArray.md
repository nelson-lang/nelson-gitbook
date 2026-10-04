# gpuArray

Copie un tableau vers le périphérique GPU.

## 📝 Syntaxe

- G = gpuArray(A)

## 📥 Argument d'entrée

- A - un tableau numérique réel, logique, complexe ou entier de petite taille.

## 📤 Argument de sortie

- G - un gpuArray stocké sur le périphérique.

## 📄 Description

<b>G = gpuArray(A)</b> copie le tableau <b>A</b> vers le GPU et renvoie un objet <b>gpuArray</b>. Les opérations sur <b>G</b> s'exécutent sur le périphérique ; utilisez <b>gather</b> pour ramener le résultat vers l'hôte.

Le périphérique stocke les données en simple précision : une entrée <b>double</b> est convertie en <b>single</b>. Les entrées réelles, <b>logical</b> et complexes sont prises en charge ; les entrées creuses ne le sont pas.

Les petites classes entières <b>int8</b>, <b>uint8</b>, <b>int16</b> et <b>uint16</b> sont préservées : leurs valeurs sont exactes en simple précision, l'arithmétique sature à l'intervalle de la classe et <b>gather</b> renvoie la classe d'origine.

<b>int32</b> et <b>uint32</b> sont également préservées (stockées sous forme de bits entiers 32 bits bruts) : l'aller-retour, les opérations saturantes <b>+</b>, <b>-</b>, <b>.\*</b>, <b>./</b>, <b>.\\</b>, le moins unaire, <b>abs</b>, <b>max</b>/<b>min</b> (élément par élément et réductions), <b>sum</b>, <b>prod</b>, <b>mean</b>, <b>cumsum</b>, <b>cumprod</b>, <b>sort</b>, <b>find</b>, la puissance entière (<b>.^</b> avec un exposant non négatif), les opérateurs relationnels et les opérations de remise en forme / d'indexation sont pris en charge. Les opérations sans signification entière (les fonctions mathématiques transcendantes élément par élément) déclenchent une erreur claire. Les classes entières 64 bits ne sont pas prises en charge.

Un GPU compatible est requis (voir <b>canUseGPU</b>).

Un tableau du périphérique peut aussi être créé directement avec <b>zeros(sz, 'gpuArray')</b> / <b>ones(sz, 'gpuArray')</b>, ou avec la forme <b>'like'</b> <b>zeros(sz, 'like', G)</b> où <b>G</b> est un gpuArray.

## 💡 Exemple

```matlab
A = single(rand(1000));
G = gpuArray(A);
R = gather(G .* G + sqrt(G));
class(G)
```

## 🔗 Voir aussi

[gather](../gpu_engine/gather.md), [isgpuarray](../gpu_engine/isgpuarray.md), [canUseGPU](../gpu_engine/canUseGPU.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
