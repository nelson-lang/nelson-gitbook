# getweburl

Retourne l'URL et le port Web GUI courants.

## 📝 Syntaxe

- [url, port] = getweburl()

## 📤 Argument de sortie

- url - URL Web GUI courante, ou une chaine vide hors lancement web actif.
- port - Port Web GUI courant, ou <b>0</b> hors lancement web actif.

## 📄 Description


<b>getweburl()</b> retourne l'URL HTTP et le port effectifs de la session Web GUI courante. Un lancement webview prive utilise toujours un port localhost interne, mais cette URL n'est pas affichee au demarrage.

## 💡 Exemple



```matlab
[url, port] = getweburl()
```


## 🔗 Voir aussi

[getwebmode](../engine/getwebmode.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
