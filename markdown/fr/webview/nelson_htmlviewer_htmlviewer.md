# nelson.htmlviewer.htmlviewer

Handle vers une fenetre du visualiseur HTML Nelson.

## 📝 Syntaxe

- h = nelson.htmlviewer.htmlviewer()
- h = nelson.htmlviewer.htmlviewer(input)
- htmlText = getHTMLText(h)
- close(h)

## 📥 Argument d'entrée

- input - chaine : chemin local, URL file ou URL text.

## 📤 Argument de sortie

- h - handle du visualiseur HTML.
- htmlText - texte du document HTML courant.

## 📄 Description


La classe <b>nelson.htmlviewer.htmlviewer</b> represente une fenetre du visualiseur HTML. Ses proprietes publiques sont <b>Input</b> et <b>Visible</b>.

## 💡 Exemple

Afficher du HTML et lire le texte du document.

```matlab
h = nelson.htmlviewer.htmlviewer('text://<html><body>Hello</body></html>');
txt = getHTMLText(h);
close(h);

```


## 🔗 Voir aussi

[web](../webview/web.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
