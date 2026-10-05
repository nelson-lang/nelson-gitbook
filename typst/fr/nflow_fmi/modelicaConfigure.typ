#import "nelson_help.typ": *

= modelicaConfigure <nflow_fmi:modelicaConfigure>

Définit ou interroge l'OpenModelica du pont Modelica de nflow.

== Syntaxe

- #raw("modelicaConfigure(path)");
- #raw("omc = modelicaConfigure()");
- #raw("modelicaConfigure('')");

== Argument d'entrée

/ path: une chaîne : un répertoire d'installation d'OpenModelica (par exemple #strong['C:\/Program Files\/OpenModelica1.27.0-64bit'];) ou l'exécutable #strong[omc]; lui-même. Une chaîne vide efface le réglage configuré.

== Argument de sortie

/ omc: le chemin résolu vers l'exécutable #strong[omc]; pour la configuration courante, ou une chaîne vide si aucun n'est trouvé.

== Description

#strong[modelicaConfigure]; sélectionne le compilateur #strong[OpenModelica]; que le pont Modelica de nflow utilise pour transformer un modèle Modelica en FMU. À utiliser lorsque la détection automatique se trompe ou lorsque plusieurs versions d'OpenModelica sont installées.

 Le réglage est persisté dans le répertoire des préférences de Nelson et est #strong[prioritaire]; : une fois configuré, seul cet emplacement est essayé, de sorte que pointer nflow vers un OpenModelica précis ne se résout jamais silencieusement vers un autre. Sans réglage, l'emplacement est détecté automatiquement à partir des variables d'environnement #strong[NELSON\_OPENMODELICA\_HOME]; et #strong[OPENMODELICAHOME];, des répertoires d'installation standard, puis de #strong[PATH];.

 Appelée sans argument, #strong[modelicaConfigure]; renvoie le chemin #strong[omc]; résolu. Appelée avec une chaîne vide, elle efface le réglage et revient à la détection automatique. Définir un chemin qui ne se résout pas vers un #strong[omc]; exécutable émet un avertissement mais est tout de même enregistré, afin de pré-configurer une machine.

 L'éditeur nflow écrit la même préférence via cette fonction : les réglages graphiques et la ligne de commande partagent une seule source de vérité.


== Exemples

Pointer nflow vers une installation d'OpenModelica précise.

``````matlab
modelicaConfigure('C:/Program Files/OpenModelica1.27.0-64bit');
info = modelicaInfo()
``````

Revenir à la détection automatique.

``````matlab
modelicaConfigure('')
``````


== Voir aussi

#nlink(<nflow_fmi:modelicaInfo>)[modelicaInfo];, #nlink(<nflow_fmi:modelicaToFmu>)[modelicaToFmu];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
