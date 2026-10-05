# open\_system

Ouvre l'éditeur nflow sur un modèle, un fichier modèle ou une archive SSP.

## 📝 Syntaxe

- open\_system(name)
- open\_system(handle)
- open\_system(file)

## 📥 Argument d'entrée

- name - un vecteur de caractères : le nom d'un modèle déjà chargé en mémoire.
- handle - un handle numérique vers un modèle créé par l'API programmatique.
- file - un vecteur de caractères : le chemin d'un fichier modèle <b>.nflow</b>, ou d'une archive <b>.ssp</b> (System Structure and Parameterization).

## 📄 Description


<b>open\_system</b> ouvre l'éditeur nflow sur un modèle. Un modèle déjà chargé en mémoire (par nom ou par handle) est capturé dans un fichier puis ouvert ; un fichier <b>.nflow</b> est ouvert directement. 

Lorsque l'argument est une archive <b>.ssp</b>, ce n'est pas un diagramme : elle est d'abord importée avec <b>NFlow.sspImport</b> (ses FMU de composants sont extraits, câblés par nom de connecteur et écrits dans un modèle <b>.nflow</b> exécutable) et le modèle obtenu est ouvert. Une composition SSP peut ainsi être ouverte dans l'éditeur en une seule étape. 

L'éditeur travaille sur la capture avec laquelle il a été ouvert ; les modifications faites côté script pendant que la fenêtre est ouverte ne lui sont pas transmises en direct.

## 💡 Exemple

Ouvrir une composition SSP dans l'éditeur

```matlab
ssp = [modulepath('nflow_fmi', 'root'), '/examples/ControlledDrivetrain.ssp'];
open_system(ssp);
```


## 🔗 Voir aussi

[NFlow.sspInfo](../nflow_engine/ssp.md), [sim](../nflow_engine/sim.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | open_system accepte une archive .ssp (importée puis ouverte) |

<!--
## 👤 Auteur

Allan CORNET
-->
