# xmlwrite

Sérialiser un objet document XML

## 📝 Syntaxe

- txt = xmlwrite(doc)
- xmlwrite(filename, doc)

## 📥 Argument d'entrée

- doc - un objet document XML retourné par xmlread, ou du texte XML.
- filename - une chaîne : chemin vers le fichier XML de sortie.

## 📤 Argument de sortie

- txt - une chaîne contenant le XML sérialisé.

## 📄 Description

xmlwrite convertit un objet document XML en texte ou l'écrit dans un fichier.

## 💡 Exemple

```matlab
xml_filename = [modulepath('xml'), '/tests/test_xml.xml'];
doc = xmlread(xml_filename);
out_filename = [tempdir(), 'xmlwrite_example.xml'];
xmlwrite(out_filename, doc);
isfile(out_filename)
```

## 🔗 Voir aussi

[xmlread](../xml/xmlread.md), [writestruct](../xml/writestruct.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
