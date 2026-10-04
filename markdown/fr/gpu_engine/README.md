# Calcul GPU

Le module GPU engine exécute des calculs sur tableaux sur le GPU via WebGPU (Dawn), de façon portable sous Windows, Linux et macOS, sans dépendance propriétaire à CUDA.

Les tableaux sont transférés vers le périphérique avec **gpuArray** et ramenés vers l'hôte avec **gather**. Les opérateurs et de nombreuses fonctions sont surchargés afin que les expressions sur un **gpuArray** s'exécutent sur le périphérique et conservent leur résultat résident sur celui-ci.

Les tableaux du périphérique sont stockés en simple précision (WebGPU n'a pas encore de type de calcul double) ; les données réelles, logiques et complexes sont prises en charge. Utilisez **canUseGPU** pour vérifier la disponibilité et **gpuDevice** pour inspecter le périphérique sélectionné.

De nombreuses fonctions sont prises en charge sur un **gpuArray** : les opérateurs, les fonctions mathématiques élément par élément (y compris l'arrondi et les fonctions hyperboliques / trigonométriques inverses), les réductions et balayages (**sum**, **prod**, **mean**, **var**, **std**, **cumsum**, **cumprod**, **sort**, **find**), les fonctions d'extraction complexe, les fonctions de forme et de prédicat, ainsi que les constructeurs **zeros**/**ones**/**rand**/**randn** via les formes **'gpuArray'** / **'like'**. Appelez **gpuArrayFunctions** pour la liste exacte et toujours à jour.

## Functions

- [canUseGPU](canUseGPU.md) - Indique si un GPU compatible est disponible.
- [gather](gather.md) - Transfère un gpuArray vers l'espace de travail hôte.
- [gpuArray](gpuArray.md) - Copie un tableau vers le périphérique GPU.
- [gpuArrayFunctions](gpuArrayFunctions.md) - Liste les fonctions prenant en charge gpuArray.
- [gpuDevice](gpuDevice.md) - Interroge le périphérique GPU sélectionné.
- [gpuDeviceCount](gpuDeviceCount.md) - Nombre de périphériques GPU compatibles.
- [isgpuarray](isgpuarray.md) - Indique si une valeur est un gpuArray.
