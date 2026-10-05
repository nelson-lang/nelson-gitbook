# fromWorkspace


<p align="center">
<img src="fromWorkspace.svg" width="192"/>
</p>
Lit un signal depuis une variable du workspace Nelson.

## 📝 Syntaxe

- Type de bloc : fromWorkspace

## 📤 Argument de sortie

- ports de sortie - 1 port de sortie (double scalaire ou vecteur, largeur issue de la variable).

## 📄 Description


Émet le signal contenu dans la variable <code>VariableName</code> du workspace de base. La variable est lue une fois au lancement de la simulation. Deux formats sont acceptés : 

- une matrice <code>[temps, valeurs]</code> : première colonne = temps, colonnes suivantes = éléments du signal ; 
- une structure avec les champs <code>time</code> (Nx1) et <code>signals.values</code> (NxW).  

Le temps doit être croissant au sens large, sans Inf ni NaN ; des instants dupliqués décrivent des discontinuités. Avec <code>Interpolate</code> à on, la sortie est interpolée linéairement (avant le premier point : extrapolation linéaire des deux premiers points ; à un instant dupliqué la valeur la plus récente gagne). À off, le bloc maintient le dernier échantillon (zéro avant le premier point). 

Après le dernier point, <code>OutputAfterFinalValue</code> choisit <code>Extrapolation</code> (linéaire, exige l'interpolation), <code>Setting to zero</code> ou <code>Holding final value</code>. 

La génération de code fige les échantillons dans des tables constantes avec la même sémantique de lecture (signaux scalaires). 

<b>Paramètres</b> 

| Paramètre | Valeur par défaut | 
| --- | --- | 
| <code>VariableName</code> | simin | 
| <code>SampleTime</code> | 0 | 
| <code>Interpolate</code> | on | 
| <code>OutputAfterFinalValue</code> | Extrapolation | 

 

<b>Caractéristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | fromWorkspace | 
| Famille | Blocs sources | 
| Phases | INIT, OUTPUT | 
| Type de signal | double, scalaire ou vecteur | 
| Génération de code | oui (tables constantes, signaux scalaires) | 

 

Generation de code : prise en charge pour C et Rust. 

**Manifeste:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/fromWorkspace.cpp`


## 💡 Exemple

Lancer la démo From/To Workspace (définit 'simin' puis ouvre le modèle)

```matlab
run([modulepath('nflow_blocks'), '/examples/workspace/From_Workspace_Demo.m']);
```


## 🔗 Voir aussi

[toWorkspace](../../nflow_blocks/sink/toWorkspace.md), [fileSource](../../nflow_blocks/source/fileSource.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
