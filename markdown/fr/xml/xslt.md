# xslt

Transformer du XML avec XSLT

## 📝 Syntaxe

- output_file = xslt(xml_source, xslt_file)
- output_file = xslt(xml_source, xslt_file, output_file)
- txt = xslt(xml_source, xslt_file, '-tostring')

## 📥 Argument d'entrée

- xml_source - une chaîne contenant le chemin d'un fichier XML, ou un objet document XML.
- xslt_file - une chaîne : chemin vers le fichier XSLT.
- output_file - une chaîne : chemin vers le fichier de sortie.

## 📤 Argument de sortie

- output_file - le chemin du fichier de sortie généré.
- txt - le texte transformé quand '-tostring' est utilisé.

## 📄 Description

xslt applique une feuille XSLT à une entrée XML. Utilisez '-tostring' pour retourner le résultat sous forme de texte.

## 💡 Exemple

```matlab
xml_filename = [modulepath('xml'), '/tests/test_xml.xml'];
xsl_filename = [modulepath('xml'), '/tests/test_xml_to_text.xslt'];
txt = xslt(xml_filename, xsl_filename, '-tostring')
```

## 🔗 Voir aussi

[xmltransform](../xml/xmltransform.md), [xmlread](../xml/xmlread.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
