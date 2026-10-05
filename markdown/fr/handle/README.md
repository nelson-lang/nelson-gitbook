# Handle


    
Le module Handle fournit des outils pour créer et manipuler des objets handle dans Nelson.

    
Les objets handle sont des références légères vers des structures de données plus volumineuses, permettant une gestion efficace de la mémoire et le partage de données entre différentes parties d'un programme.

    
Ce module inclut des fonctions pour créer, copier et détruire des objets handle, ainsi que pour gérer leur durée de vie et garantir un nettoyage approprié.

    
Il inclut aussi les fonctions de reflection classdef, d'evenements, d'ecouteurs, de proprietes dynamiques, de references faibles et de handles invalides types.

  

## Functions

- [addlistener](addlistener.md) - Ajoute un callback ecouteur a un evenement classdef.
- [cancel](cancel.md) - Annuler un objet annulable.
- [delete](delete.md) - Supprime des objets handle ou des fichiers.
- [dynamicprops](dynamicprops.md) - Classe de base pour objets handle avec proprietes dynamiques d'instance.
- [enumeration](enumeration.md) - Renvoie les membres d'une classe d'enumeration classdef.
- [events](events.md) - Renvoie les noms des evenements d'un objet ou d'une classe classdef.
- [get](get.md) - Récupère la valeur d'une propriété d'un objet handle.
- [handle](handle.md) - Classe de base des objets à sémantique de référence.
- [insert](insert.md) - Inserer des entrees dans un objet prenant en charge l'insertion par cle.
- [invoke](invoke.md) - Invoque une méthode sur un objet handle.
- [isKey](isKey.md) - Determiner si un objet contient une cle.
- [ismethod](ismethod.md) - Renvoie true si une methode publique appartient a un objet ou une classe.
- [isprop](isprop.md) - Renvoie true si une propriete appartient a un objet ou une classe.
- [isvalid](isvalid.md) - Retourne vrai pour les handles valides.
- [listener](listener.md) - Cree un ecouteur d'evenement classdef.
- [lookup](lookup.md) - Rechercher des valeurs dans un objet.
- [metaclass](metaclass.md) - Renvoie les metadonnees classdef.
- [methods](methods.md) - Renvoie les noms des methodes publiques d'un objet ou d'une classe.
- [nelson.lang.HandlePlaceholder](nelson.lang.HandlePlaceholder.md) - Classe handle de remplacement pour les cibles absentes.
- [nelson.lang.WeakReference](nelson.lang.WeakReference.md) - Reference faible vers un objet handle.
- [nelson.lang.invalidHandle](nelson.lang.invalidHandle.md) - Creer un handle invalide avec une classe handle donnee.
- [nelson.mixin.Copyable](nelson.mixin.Copyable.md) - Ajouter une méthode copy à une classe handle.
- [nelson.mixin.CustomCompactDisplayProvider](nelson.mixin.CustomCompactDisplayProvider.md) - Fournir un affichage compact d'un objet dans les conteneurs.
- [nelson.mixin.CustomDisplay](nelson.mixin.CustomDisplay.md) - Personnaliser l'affichage d'un objet.
- [nelson.mixin.Heterogeneous](nelson.mixin.Heterogeneous.md) - Autoriser des tableaux mélangeant des classes apparentées.
- [nelson.mixin.Scalar](nelson.mixin.Scalar.md) - Restreindre une classe à des instances scalaires.
- [nelson.mixin.SetGet](nelson.mixin.SetGet.md) - Ajouter l'accès aux propriétés par set et get à une classe handle.
- [nelson.mixin.SetGetExactNames](nelson.mixin.SetGetExactNames.md) - Accès set et get aux propriétés avec noms sensibles à la casse.
- [notify](notify.md) - Notifie les ecouteurs d'un evenement classdef.
- [properties](properties.md) - Renvoie les noms des proprietes publiques d'un objet ou d'une classe.
- [remove](remove.md) - Supprimer des entrees d'un objet.
- [set](set.md) - Définit la valeur d'une propriété d'un objet handle.
- [superclasses](superclasses.md) - Noms des superclasses d'une classe.

