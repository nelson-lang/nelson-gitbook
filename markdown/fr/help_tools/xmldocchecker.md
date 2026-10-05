# xmldocchecker

Vérifie un fichier de documentation XML.

## 📝 Syntaxe

- xmldocchecker()
- xmldocchecker(xmldocfilename)
- [state, errors\_detected, warnings\_detected] = xmldocchecker(xmldocfilename)

## 📥 Argument d'entrée

- xmldocfilename - une chaîne : document xml.

## 📤 Argument de sortie

- state - un booléen : vrai si le document est valide, faux sinon.
- errors\_detected - un tableau (cell) de chaînes : erreurs détectées.
- warnings\_detected - un tableau (cell) de chaînes : avertissements détectés.

## 📄 Description


<b>xmldocchecker</b> est un outil pour vérifier qu'un document XML est valide. 

Utilisé pour valider la structure et le contenu des fichiers XML de la documentation de Nelson. 

<b>xmldocchecker()</b> vérifie la validité de tous les fichiers XML de la documentation de Nelson.

## 💡 Exemple



```matlab
xmldocchecker([nelsonroot(),'/module_skeleton/help/en_US/xml/nelson_sum.xml'])
```


## 🔗 Voir aussi

[xmlchecker](../xml/xmlchecker.md), [buildhelp](../help_tools/buildhelp.md), [buildhelpweb](../help_tools/buildhelpweb.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 1.15.0   | Use xmlchecker pour la validation XML. |

<!--
## 👤 Auteur

Allan CORNET
-->
