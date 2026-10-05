# xmldocrenderimages

Génère les images d'exemple des fichiers d'aide de Nelson.

## 📝 Syntaxe

- xmldocrenderimages()
- xmldocrenderimages(module\_name)
- xmldocrenderimages(module\_name, language)
- xmldocrenderimages(module\_name, language, force)
- xmldocrenderimages(module\_name, [], force)
- xmldocrenderimages([], [], force)

## 📥 Argument d'entrée

- module\_name - une chaîne : nom du module (le module doit être chargé). Une valeur numérique vide [] sélectionne tous les modules qui ont des fichiers d'aide.
- language - une chaîne : langue des fichiers d'aide, par exemple 'en\_US' ou 'fr\_FR'. Une valeur vide [] sélectionne toutes les langues disponibles.
- force - un logique : à vrai, chaque image est générée à nouveau, même si elle est déjà à jour. Par défaut : faux.

## 📄 Description


<b>xmldocrenderimages</b> exécute les exemples des fichiers d'aide qui déclarent une image avec <code>example_item_img</code> et <code>generate="true"</code>, puis enregistre la figure obtenue à côté du fichier XML. 

Une image est générée quand elle est absente, vide ou plus ancienne que son fichier XML. Utilisez <code>force</code> pour la générer à nouveau dans tous les cas. 

Chaque exemple s'exécute dans un processus <code>nelson-adv-cli</code> séparé avec un délai maximal de 120 secondes, plusieurs en parallèle. Un exemple en échec est relancé jusqu'à cinq fois avant qu'une erreur soit levée. 

Sans argument, les images de tous les modules sont générées pour toutes les langues disponibles. La fonction change la langue de la session pendant son travail et la rétablit à la fin.

## 💡 Exemples

Génère les images absentes ou périmées d'un module dans la langue courante.

```matlab
xmldocrenderimages('graphics');
```
Génère toutes les images de tous les modules dans toutes les langues, même celles déjà à jour.

```matlab
xmldocrenderimages([], [], true);
```


## 🔗 Voir aussi

[buildhelp](../help_tools/buildhelp.md), [xmldocchecker](../help_tools/xmldocchecker.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
