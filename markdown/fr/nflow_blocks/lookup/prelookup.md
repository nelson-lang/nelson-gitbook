# prelookup


<p align="center">
<img src="prelookup.svg" width="72"/>
</p>
Calcule l indice d intervalle k et la fraction f pour une recherche de breakpoints partagee.

## 📝 Syntaxe

- Type de bloc : prelookup

## 📥 Argument d'entrée

- ports d entree - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description


Calcule l indice d intervalle k et la fraction f pour une recherche de breakpoints partagee. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Tables de correspondance | 
| Type | <code>prelookup</code> | 
| Libelle | Prelookup | 

  

<b>Description</b> 

Pour une entree scalaire <code>u</code> et le vecteur strictement croissant <code>BreakpointsForDimension1</code>, calcule l'indice d'intervalle k tel que bp[k] <= u < bp[k+1] et la fraction f = (u - bp[k]) / (bp[k+1] - bp[k]). La sortie est le vecteur a 2 elements <code>[k, f]</code>, qu'un ou plusieurs blocs <code>interpolationPrelookup</code> reutilisent pour interpoler plusieurs tables sans refaire la recherche d'intervalle. 

Les entrees hors plage sont bornees : sous le premier breakpoint donne [0, 0] ; au niveau ou au-dessus du dernier donne [N-2, 1]. La generation de code C et Rust est supportee (la passe d'expansion vectorielle abaisse le bloc en aides scalaires). 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | gauche | x=0, y=40 | 

 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | droite | x=90, y=40 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>BreakpointsForDimension1</code> | [0 1 2 3 4] | 

 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | prelookup | 
| Famille | Tables de correspondance | 
| Taille rendue | 90 x 80 | 
| Phases | ALGEBRAIC | 
| Etat interne ou historique | non | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- ALGEBRAIC : localise k, calcule f, sort [k, f]. 

<b>Equation ou regle</b> 
$$k : b_k \le u < b_{k+1},\quad f = \frac{u - b_k}{b_{k+1} - b_k}$$
 

<b>Capacites etendues</b> 

<b>Sources d implementation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/lookup/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/lookup/prelookup.cpp`


## 💡 Exemple

Prelookup u = 2.5 sur [0 1 2 3 4], puis interpoler la table [0 1 4 9 16] -> 6.5.

```matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',2.5)), struct('id','pl','type','prelookup','inputs',1,'outputs',1,'params',struct('BreakpointsForDimension1',[0 1 2 3 4])), struct('id','ip','type','interpolationPrelookup','inputs',1,'outputs',1,'params',struct('Table',[0 1 4 9 16])), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','pl','fromIndex',0,'toIndex',0), struct('from','pl','to','ip','fromIndex',0,'toIndex',0), struct('from','ip','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 Voir aussi

[interpolationPrelookup](../../nflow_blocks/lookup/interpolationPrelookup.md), [lookup1D](../../nflow_blocks/lookup/lookup1D.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
