# xmldocchecker

Vérifie un fichier de documentation XML.

## Syntaxe

- xmldocchecker(xmldocfilename)
- xmldocchecker(xmldocfilename, xsdfilename)
- [state, errors_detected, warnings_detected] = xmldocchecker(xmldocfilename)
- [state, errors_detected, warnings_detected] = xmldocchecker(xmldocfilename, xsdfilename)

## Argument d'entrée

- xmldocfilename - a string: xml document.
- xsdfilename - a string: xsd document.

## Argument de sortie

- state - un booléen : vrai si le document est valide, faux sinon.
- errors_detected - un tableau (cell) de chaînes : erreurs détectées.
- warnings_detected - un tableau (cell) de chaînes : avertissements détectés.

## Description

<p>xmldocchecker est un outil pour vérifier qu'un document XML est valide.</p>

<p>Principalement utilisé pour valider la structure et le contenu des fichiers XML par rapport à un schéma défini.</p>

## Exemple

```matlab
xmldocchecker([nelsonroot(),'/module_skeleton/help/fr_FR/xml/nelson_sum.xml'])
```

## Voir aussi

[buildhelp](../help_tools/buildhelp.md), [buildhelpweb](../help_tools/buildhelpweb.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
