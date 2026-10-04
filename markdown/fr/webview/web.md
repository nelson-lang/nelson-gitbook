# web

Ouvre une page web, un fichier local ou du texte HTML.

## 📝 Syntaxe

- web()
- web(url)
- web(url, option1, ..., optionN)
- stat = web(...)
- [stat, h, url] = web(...)

## 📥 Argument d'entrée

- url - chaine : adresse web, chemin local, URL file ou URL text.
- option - une valeur parmi '-browser', '-new', '-noaddressbox' ou '-notoolbar'.

## 📤 Argument de sortie

- stat - 0 en cas de succes, valeur non nulle sinon.
- h - handle du visualiseur HTML, ou vide lorsque le navigateur systeme est utilise.
- url - entree courante du visualiseur HTML, ou chaine vide lorsque le navigateur systeme est utilise.

## 📄 Description

<b>web</b> ouvre les adresses externes dans le navigateur systeme et ouvre le contenu HTML local ou inline dans le visualiseur HTML Nelson.

## 💡 Exemple

Afficher du texte HTML inline.

```matlab
[stat, h] = web('text://<html><body><h1>Hello</h1></body></html>');
```

## 🔗 Voir aussi

[nelson.htmlviewer.htmlviewer](../webview/nelson.htmlviewer.htmlviewer.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
