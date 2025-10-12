# docroot

Récupère ou met à jour le répertoire racine du système d'aide de Nelson.

## Syntaxe

- r = docroot()
- r = docroot(new_docroot)

## Argument d'entrée

- new_docroot - a string: '', '.', or a URL.

## Description

<p>docroot récupère ou met à jour le répertoire racine de l'aide de Nelson.</p>

<p>Lorsqu'il est appelé sans argument, docroot renvoie le répertoire racine actuel de l'aide de Nelson. Par défaut, il renvoie l'URL du site d'aide utilisé par Nelson.</p>

<p>Lorsque appelé avec un argument, docroot met à jour le répertoire racine de l'aide de Nelson.</p>

<p>docroot('') réinitialise le répertoire racine de l'aide de Nelson à la valeur par défaut.</p>

<p>docroot('.') utilise les fichiers d'aide locaux et le navigateur local (restaure le comportement avant la v1.11.0).</p>

## Exemple

```matlab

docroot()
doc rand
docroot('.')
doc rand
docroot('')

```

## Voir aussi

[doc](../help_tools/doc.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.14.0  | version initiale |

## Auteur

Allan CORNET
