# xmlprettyprint

formate un fichier XML.

## 📝 Syntaxe

- xmlprettyprint(xml_file)

## 📥 Argument d'entrée

- xml_file - un fichier XML valide.

## 📄 Description

<b>xmlprettyprint</b> formate un fichier XML pour qu'il soit lisible par un humain.

## 💡 Exemple

```matlab
xml_filename = [modulepath('xml'), '/tests/test_xml.xml'];
if isfile(xml_filename)
    xmlprettyprint(xml_filename, false);
    fileread(xml_filename)
    xmlprettyprint(xml_filename, true);
    fileread(xml_filename)
end

```

## 🔗 Voir aussi

[jsonprettyprint](../json/jsonprettyprint.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.15.0  | version initiale |

## 👤 Auteur

Allan CORNET
