# jsondecode

décodage d'une chaîne JSON en objet Nelson.

## 📝 Syntaxe

- res = jsondecode(json_str)
- res = jsondecode(json_str, '-file')

## 📥 Argument d'entrée

- json_str - une chaîne JSON.
- '-file' - une chaîne ; le premier argument est le chemin du fichier.

## 📤 Argument de sortie

- res - une variable Nelson convertie depuis JSON.

## 📄 Description

<b>jsondecode</b> convertit les noms de champs d'un objet JSON en noms de champs d'une structure Nelson.

## 📚 Bibliographie

http://www.rfc-editor.org/rfc/rfc7159.txt

## 💡 Exemples

```matlab
field1 = 'f1';  value1 = zeros(1,10);
field2 = 'f2';  value2 = {'a', 'b'};
field3 = 'f3';  value3 = {pi, pi*pi};
field4 = 'f4';  value4 = {'fourth'};
s = struct(field1,value1,field2,value2,field3,value3,field4,value4)
r = jsonencode(s)
r2 = jsondecode(r)
```

```matlab

jsondecode([modulepath('json'), '/examples/patient.json'], '-file')

```

## 🔗 Voir aussi

[jsonencode](../json/jsonencode.md), [fileread](../stream_manager/fileread.md).

## 🕔 Historique

| Version | 📄 Description                       |
| ------- | ------------------------------------ |
| 1.0.0   | version initiale                     |
| 1.15.0  | second argument added for file input |
| 1.15.0  | simdjson library used                |

<!--
## 👤 Auteur

Allan CORNET
-->
