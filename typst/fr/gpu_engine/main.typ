#import "nelson_help.typ": *

= Calcul GPU

Le module GPU engine exécute des calculs sur tableaux sur le GPU via WebGPU (Dawn), de façon portable sous Windows, Linux et macOS, sans dépendance propriétaire à CUDA.

 Les tableaux sont transférés vers le périphérique avec #strong[gpuArray]; et ramenés vers l'hôte avec #strong[gather];. Les opérateurs et de nombreuses fonctions sont surchargés afin que les expressions sur un #strong[gpuArray]; s'exécutent sur le périphérique et conservent leur résultat résident sur celui-ci.

 Les tableaux du périphérique sont stockés en simple précision (WebGPU n'a pas encore de type de calcul double) ; les données réelles, logiques et complexes sont prises en charge. Utilisez #strong[canUseGPU]; pour vérifier la disponibilité et #strong[gpuDevice]; pour inspecter le périphérique sélectionné.

 De nombreuses fonctions sont prises en charge sur un #strong[gpuArray]; : les opérateurs, les fonctions mathématiques élément par élément (y compris l'arrondi et les fonctions hyperboliques \/ trigonométriques inverses), les réductions et balayages (#strong[sum];, #strong[prod];, #strong[mean];, #strong[var];, #strong[std];, #strong[cumsum];, #strong[cumprod];, #strong[sort];, #strong[find];), les fonctions d'extraction complexe, les fonctions de forme et de prédicat, ainsi que les constructeurs #strong[zeros];\/#strong[ones];\/#strong[rand];\/#strong[randn]; via les formes #strong['gpuArray']; \/ #strong['like'];. Appelez #strong[gpuArrayFunctions]; pour la liste exacte et toujours à jour.

== Functions

- #nlink(<gpu_engine:canUseGPU>)[canUseGPU]: Indique si un GPU compatible est disponible.
- #nlink(<gpu_engine:gather>)[gather]: Transfère un gpuArray vers l'espace de travail hôte.
- #nlink(<gpu_engine:gpuArray>)[gpuArray]: Copie un tableau vers le périphérique GPU.
- #nlink(<gpu_engine:gpuArrayFunctions>)[gpuArrayFunctions]: Liste les fonctions prenant en charge gpuArray.
- #nlink(<gpu_engine:gpuDevice>)[gpuDevice]: Interroge le périphérique GPU sélectionné.
- #nlink(<gpu_engine:gpuDeviceCount>)[gpuDeviceCount]: Nombre de périphériques GPU compatibles.
- #nlink(<gpu_engine:isgpuarray>)[isgpuarray]: Indique si une valeur est un gpuArray.


#nested[
#pagebreak(weak: true)
#include "canUseGPU.typ"
#pagebreak(weak: true)
#include "gather.typ"
#pagebreak(weak: true)
#include "gpuArray.typ"
#pagebreak(weak: true)
#include "gpuArrayFunctions.typ"
#pagebreak(weak: true)
#include "gpuDevice.typ"
#pagebreak(weak: true)
#include "gpuDeviceCount.typ"
#pagebreak(weak: true)
#include "isgpuarray.typ"
]
