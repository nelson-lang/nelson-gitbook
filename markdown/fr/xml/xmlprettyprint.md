# xmlprettyprint

formate un fichier XML.

## 📝 Syntaxe

- xmlprettyprint(xml\_file)

## 📥 Argument d'entrée

- xml\_file - un fichier XML valide.
- format\_space - un booléen indiquant s'il faut formater avec des espaces (true) ou non (false).

## 📄 Description


<b>xmlprettyprint</b> formate un fichier XML pour qu'il soit lisible par un humain.

## 💡 Exemple



```matlab
xml_filename = [modulepath('xml'), '/tests/test_xml.xml'];
if isfile(xml_filename)
    xml_tmp = [tempdir(), 'test_xml.xml'];
    copyfile(xml_filename, xml_tmp);
    xmlprettyprint(xml_tmp, false);
    fileread(xml_tmp)
    xmlprettyprint(xml_tmp, true);
    fileread(xml_tmp)
end
```


## 🔗 Voir aussi

[jsonprettyprint](../json/jsonprettyprint.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.15.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
