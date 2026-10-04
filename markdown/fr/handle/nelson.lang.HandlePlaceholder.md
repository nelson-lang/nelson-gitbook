# nelson.lang.HandlePlaceholder

Classe handle de remplacement pour les cibles absentes.

## 📝 Syntaxe

- obj = nelson.lang.HandlePlaceholder()

## 📤 Argument de sortie

- obj - un objet handle scalaire.

## 📄 Description

<b>nelson.lang.HandlePlaceholder</b> est une classe handle concrete utilisee quand une API doit retourner un handle mais qu'aucune cible vivante n'est disponible.

Un objet placeholder cree par le constructeur est un handle valide normal jusqu'a sa suppression.

Une reference faible sans cible affectee retourne un handle invalide dont la classe est <b>nelson.lang.HandlePlaceholder</b>.

La classe ne definit pas de proprietes ni de methodes utilisateur au-dela des operations communes aux handles.

Utiliser cette classe comme classe handle neutre quand la classe de la cible originale est inconnue ou sans importance.

Un objet placeholder construit et un handle placeholder invalide sont deux valeurs differentes. L'objet construit est valide jusqu'a sa suppression; un handle placeholder invalide n'est jamais valide.

Les handles placeholder peuvent etre verifies avec <b>isvalid</b>, compares par nom de classe avec <b>class</b>, et utilises partout ou un placeholder handle generique est approprie.

La classe est volontairement vide. Ce n'est pas un conteneur de donnees utilisateur.

## 💡 Exemples

Creer et supprimer un handle placeholder.

```matlab
p = nelson.lang.HandlePlaceholder();
class(p)
isvalid(p)
delete(p)
isvalid(p)
```

Examiner le handle retourne par defaut par une reference faible vide.

```matlab
w = nelson.lang.WeakReference();
h = w.Handle;
class(h)
isvalid(h)
```

Comparer un objet placeholder valide avec un handle placeholder invalide.

```matlab
p = nelson.lang.HandlePlaceholder();
q = nelson.lang.invalidHandle('nelson.lang.HandlePlaceholder');
class(p)
class(q)
isvalid(p)
isvalid(q)
```

## 🔗 Voir aussi

[nelson.lang.WeakReference](../handle/nelson.lang.WeakReference.md), [nelson.lang.invalidHandle](../handle/nelson.lang.invalidHandle.md), [isvalid](../handle/isvalid.md), [class](../types/class.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
