# urlencode

Remplacer les caractères spéciaux dans les URLs par des séquences d'échappement.

## 📝 Syntaxe

- new_url = webread(url)

## 📥 Argument d'entrée

- url - chaîne : URL d'un service web.

## 📤 Argument de sortie

- new_url - chaîne : URL encodée.

## 📄 Description

<b>urlencode</b> remplace les caractères spéciaux dans une URL par leurs séquences d'échappement.

Par exemple, les espaces doivent être remplacés par '%20'.

## 💡 Exemple

```matlab
url = 'https://httpbin.org/get?query=hello world';
res = urlencode(url)

```

## 🔗 Voir aussi

[webread](../webtools/webread.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.11.0  | version initiale |

## 👤 Auteur

Allan CORNET
