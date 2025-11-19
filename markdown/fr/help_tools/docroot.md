# docroot

Récupère ou met à jour le répertoire racine du système d'aide de Nelson.

## 📝 Syntaxe

- r = docroot()
- r = docroot(new_docroot)

## 📥 Argument d'entrée

- new_docroot - a string: '', '.', or a URL.

## 📄 Description

<b>docroot</b> récupère ou met à jour le répertoire racine de l'aide de Nelson.

Lorsqu'il est appelé sans argument, <b>docroot</b> renvoie le répertoire racine actuel de l'aide de Nelson. Par défaut, il renvoie l'URL du site d'aide utilisé par Nelson.

Lorsque appelé avec un argument,<b>docroot</b> met à jour le répertoire racine de l'aide de Nelson.

<b>docroot('')</b> réinitialise le répertoire racine de l'aide de Nelson à la valeur par défaut.

<b>docroot('.')</b> utilise les fichiers d'aide locaux et le navigateur local (restaure le comportement avant la v1.11.0).

## 💡 Exemple

```matlab

docroot()
doc rand
docroot('.')
doc rand
docroot('')

```

## 🔗 Voir aussi

[doc](../help_tools/doc.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.14.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
