# modelicaConfigure

Définit ou interroge l'OpenModelica du pont Modelica de nflow.

## 📝 Syntaxe

- modelicaConfigure(path)
- omc = modelicaConfigure()
- modelicaConfigure('')

## 📥 Argument d'entrée

- path - une chaîne : un répertoire d'installation d'OpenModelica (par exemple <b>'C:/Program Files/OpenModelica1.27.0-64bit'</b>) ou l'exécutable <b>omc</b> lui-même. Une chaîne vide efface le réglage configuré.

## 📤 Argument de sortie

- omc - le chemin résolu vers l'exécutable <b>omc</b> pour la configuration courante, ou une chaîne vide si aucun n'est trouvé.

## 📄 Description

<b>modelicaConfigure</b> sélectionne le compilateur <b>OpenModelica</b> que le pont Modelica de nflow utilise pour transformer un modèle Modelica en FMU. À utiliser lorsque la détection automatique se trompe ou lorsque plusieurs versions d'OpenModelica sont installées.

Le réglage est persisté dans le répertoire des préférences de Nelson et est <b>prioritaire</b> : une fois configuré, seul cet emplacement est essayé, de sorte que pointer nflow vers un OpenModelica précis ne se résout jamais silencieusement vers un autre. Sans réglage, l'emplacement est détecté automatiquement à partir des variables d'environnement <b>NELSON_OPENMODELICA_HOME</b> et <b>OPENMODELICAHOME</b>, des répertoires d'installation standard, puis de <b>PATH</b>.

Appelée sans argument, <b>modelicaConfigure</b> renvoie le chemin <b>omc</b> résolu. Appelée avec une chaîne vide, elle efface le réglage et revient à la détection automatique. Définir un chemin qui ne se résout pas vers un <b>omc</b> exécutable émet un avertissement mais est tout de même enregistré, afin de pré-configurer une machine.

L'éditeur nflow écrit la même préférence via cette fonction : les réglages graphiques et la ligne de commande partagent une seule source de vérité.

## 💡 Exemples

Pointer nflow vers une installation d'OpenModelica précise.

```matlab
modelicaConfigure('C:/Program Files/OpenModelica1.27.0-64bit');
info = modelicaInfo()
```

Revenir à la détection automatique.

```matlab
modelicaConfigure('')
```

## 🔗 Voir aussi

[modelicaInfo](../nflow_fmi/modelicaInfo.md), [modelicaToFmu](../nflow_fmi/modelicaToFmu.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
