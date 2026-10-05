# modelicaInfo

Indique l'OpenModelica utilisé par le pont Modelica de nflow.

## 📝 Syntaxe

- info = modelicaInfo()

## 📤 Argument de sortie

- info - une structure scalaire décrivant l'installation d'OpenModelica, avec les champs listés ci-dessous.

## 📄 Description


<b>modelicaInfo</b> indique le compilateur <b>OpenModelica</b> (<b>omc</b>) que le pont Modelica de nflow utilisera. Un bloc <b>modelica</b> compile un modèle Modelica en FMU avec OpenModelica puis le simule via le chemin FMI de nflow ; <b>modelicaInfo</b> indique si cela est possible et quel OpenModelica est sélectionné. 

La structure <b>info</b> renvoyée a les champs suivants : 

| Champ | Classe | Détails | 
| --- | --- | --- | 
| available | logical | **true** lorsqu'un exécutable **omc** a été trouvé et s'exécute. | 
| capable | logical | **true** lorsqu'OpenModelica est non seulement présent mais capable d'exporter une FMU (le runtime d'export FMI est installé). Un modèle ne se simule que si **capable** vaut **true**. | 
| omc | char | le chemin résolu vers l'exécutable **omc**, ou une chaîne vide. | 
| home | char | le répertoire d'installation d'OpenModelica, ou une chaîne vide. | 
| version | char | la chaîne de version renvoyée par **omc**. | 
| reason | char | un état lisible ; en cas d'indisponibilité, il explique la cause et la solution. | 

 

La présence n'est pas la capacité : un exécutable <b>omc</b> peut s'exécuter tout en étant incapable de construire une FMU si son installation ne comporte pas le runtime d'export FMI. Dans ce cas <b>available</b> vaut <b>true</b> mais <b>capable</b> vaut <b>false</b>, et un bloc <b>modelica</b> bloque la simulation avec un message clair. 

L'emplacement d'OpenModelica est résolu dans l'ordre suivant : un chemin configuré avec <b>modelicaConfigure</b>, la variable d'environnement <b>NELSON\_OPENMODELICA\_HOME</b> (spécifique à Nelson), la variable d'environnement <b>OPENMODELICAHOME</b>, les répertoires d'installation standard, puis <b>PATH</b>.

## 💡 Exemple

Vérifier qu'un modèle Modelica peut être simulé.

```matlab
info = modelicaInfo();
if ~info.capable
  disp(info.reason);
end
```


## 🔗 Voir aussi

[modelicaConfigure](../nflow_fmi/modelicaConfigure.md), [modelicaToFmu](../nflow_fmi/modelicaToFmu.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
