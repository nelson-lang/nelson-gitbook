# xmlchecker

Vérifie un fichier XML par rapport à un XSD.

## 📝 Syntaxe

- xmlchecker(xmlfile, xsdfile)
- [state, errors\_detected, warnings\_detected] = xmlchecker(xmlfile, xsdfile)

## 📥 Argument d'entrée

- xmlfile - une chaîne : chemin vers le fichier XML.
- xsdfile - une chaîne : chemin vers le fichier XSD.

## 📤 Argument de sortie

- state - un logique : vrai si le document est valide, faux sinon.
- errors_detected - une cellule de chaînes : erreurs détectées.
- warnings_detected - une cellule de chaînes : avertissements détectés.

## 📄 Description

<b>xmlchecker</b> est un outil pour vérifier qu'un fichier XML est valide par rapport à un fichier XSD.

## 💡 Exemple

```matlab
xml_filename = [modulepath('xml'), '/tests/test_xml.xml'];
if isfile(xml_filename)
  xsd_filename = [modulepath('xml'), '/tests/test_xml.xsd'];
  [is_valid, errors] = xmlchecker(xml_filename, xsd_filename);
end
```

## 🔗 Voir aussi

[xmldocchecker](../help_tools/xmldocchecker.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.15.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
