# xslt

Transformer du XML avec XSLT

## 📝 Syntaxe

- output\_file = xslt(xml\_source, xslt\_file)
- output\_file = xslt(xml\_source, xslt\_file, output\_file)
- txt = xslt(xml\_source, xslt\_file, '-tostring')

## 📥 Argument d'entrée

- xml\_source - une chaîne contenant le chemin d'un fichier XML, ou un objet document XML.
- xslt\_file - une chaîne : chemin vers le fichier XSLT.
- output\_file - une chaîne : chemin vers le fichier de sortie.

## 📤 Argument de sortie

- output\_file - le chemin du fichier de sortie généré.
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

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
