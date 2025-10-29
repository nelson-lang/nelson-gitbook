# websave

Enregistrer les données d'un service web RESTful dans un fichier

## 📝 Syntaxe

- result_filename = websave(filename, url)
- result_filename = websave(filename, url, name1, value1, ... , nameN, valueN)
- result_filename = websave(filename, url, name1, value1, ... , nameN, valueN, options)

## 📥 Argument d'entrée

- filename - chaîne : nom du fichier où sauvegarder le contenu.
- url - chaîne : URL d'un service web.
- name1, value1, ... , nameN, valueN - Arguments Nom-Valeur.
- options - objet weboptions.

## 📤 Argument de sortie

- result_filename - chaîne : chemin complet du fichier résultat.

## 📄 Description

<b>websave()</b> enregistre le contenu provenant du web dans <b>filename</b>.

La fonction websave renvoie le chemin complet du fichier en tant que <b>result_filename</b>.

## 💡 Exemple

```matlab
url ='https://httpbin.org/get';
filename = [tempdir(), 'test.txt'];
destination_filename = websave(filename, url, weboptions('ContentType','json'));
txt = fileread(filename)
```

## 🔗 Voir aussi

[weboptions](../webtools/weboptions.md), [webread](../webtools/webread.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
