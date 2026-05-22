# xmldoclinkchecker

Vérifie les références croisées non résolues dans les fichiers d'aide XML de Nelson.

## 📝 Syntaxe

- xmldoclinkchecker()
- xmldoclinkchecker(xmldocfilename)
- xmldoclinkchecker(xmldocdirectory)
- [state, errors\_detected, warnings\_detected] = xmldoclinkchecker(target)

## 📥 Argument d'entrée

- target - une chaîne : fichier XML ou répertoire à vérifier.

## 📤 Argument de sortie

- state - un booléen : vrai si toutes les références sont résolues, faux sinon.
- errors_detected - un tableau (cell) de chaînes : références de liens non résolues et erreurs associées.
- warnings_detected - un tableau (cell) de chaînes : avertissements détectés pendant la validation.

## 📄 Description

<b>xmldoclinkchecker</b> valide les références <code>

<link linkend="..."/>
</code> utilisées dans les pages d'aide XML de Nelson.

Il vérifie les références dans un seul fichier XML, un arbre de répertoires, ou dans tous les fichiers XML d'aide des modules installés lorsqu'il est appelé sans argument.

Cette fonction est utile pour détecter les références croisées cassées avant de générer l'aide HTML/Markdown.

La cible du lien utilise le nom du fichier XML sans l'extension <code>.xml</code>, éventuellement préfixé par un nom de module comme <code>${dynamic_link}havecompiler</code>.

## 💡 Exemples

Vérifier les liens dans un fichier XML d'aide.

```matlab
[state, errors_detected] = xmldoclinkchecker([modulepath('help_tools'), '/help/fr_FR/xml/xmldocchecker.xml'])
```

Vérifier tous les liens dans le répertoire XML d'aide d'un module.

```matlab
xmldoclinkchecker([modulepath('help_tools'), '/help/fr_FR/xml'])
```

## 🔗 Voir aussi

[xmldocchecker](../help_tools/xmldocchecker.md), [xmldocbuild](../help_tools/xmldocbuild.md), [buildhelp](../help_tools/buildhelp.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.17.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
