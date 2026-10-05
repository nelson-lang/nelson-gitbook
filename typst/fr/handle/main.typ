#import "nelson_help.typ": *

= Handle

Le module Handle fournit des outils pour créer et manipuler des objets handle dans Nelson.

 Les objets handle sont des références légères vers des structures de données plus volumineuses, permettant une gestion efficace de la mémoire et le partage de données entre différentes parties d'un programme.

 Ce module inclut des fonctions pour créer, copier et détruire des objets handle, ainsi que pour gérer leur durée de vie et garantir un nettoyage approprié.

 Il inclut aussi les fonctions de reflection classdef, d'evenements, d'ecouteurs, de proprietes dynamiques, de references faibles et de handles invalides types.

== Functions

- #nlink(<handle:addlistener>)[addlistener]: Ajoute un callback ecouteur a un evenement classdef.
- #nlink(<handle:cancel>)[cancel]: Annuler un objet annulable.
- #nlink(<handle:delete>)[delete]: Supprime des objets handle ou des fichiers.
- #nlink(<handle:dynamicprops>)[dynamicprops]: Classe de base pour objets handle avec proprietes dynamiques d'instance.
- #nlink(<handle:enumeration>)[enumeration]: Renvoie les membres d'une classe d'enumeration classdef.
- #nlink(<handle:events>)[events]: Renvoie les noms des evenements d'un objet ou d'une classe classdef.
- #nlink(<handle:get>)[get]: Récupère la valeur d'une propriété d'un objet handle.
- #nlink(<handle:handle>)[handle]: Classe de base des objets à sémantique de référence.
- #nlink(<handle:insert>)[insert]: Inserer des entrees dans un objet prenant en charge l'insertion par cle.
- #nlink(<handle:invoke>)[invoke]: Invoque une méthode sur un objet handle.
- #nlink(<handle:isKey>)[isKey]: Determiner si un objet contient une cle.
- #nlink(<handle:ismethod>)[ismethod]: Renvoie true si une methode publique appartient a un objet ou une classe.
- #nlink(<handle:isprop>)[isprop]: Renvoie true si une propriete appartient a un objet ou une classe.
- #nlink(<handle:isvalid>)[isvalid]: Retourne vrai pour les handles valides.
- #nlink(<handle:listener>)[listener]: Cree un ecouteur d'evenement classdef.
- #nlink(<handle:lookup>)[lookup]: Rechercher des valeurs dans un objet.
- #nlink(<handle:metaclass>)[metaclass]: Renvoie les metadonnees classdef.
- #nlink(<handle:methods>)[methods]: Renvoie les noms des methodes publiques d'un objet ou d'une classe.
- #nlink(<handle:nelson.lang.HandlePlaceholder>)[nelson.lang.HandlePlaceholder]: Classe handle de remplacement pour les cibles absentes.
- #nlink(<handle:nelson.lang.WeakReference>)[nelson.lang.WeakReference]: Reference faible vers un objet handle.
- #nlink(<handle:nelson.lang.invalidHandle>)[nelson.lang.invalidHandle]: Creer un handle invalide avec une classe handle donnee.
- #nlink(<handle:nelson.mixin.Copyable>)[nelson.mixin.Copyable]: Ajouter une méthode copy à une classe handle.
- #nlink(<handle:nelson.mixin.CustomCompactDisplayProvider>)[nelson.mixin.CustomCompactDisplayProvider]: Fournir un affichage compact d'un objet dans les conteneurs.
- #nlink(<handle:nelson.mixin.CustomDisplay>)[nelson.mixin.CustomDisplay]: Personnaliser l'affichage d'un objet.
- #nlink(<handle:nelson.mixin.Heterogeneous>)[nelson.mixin.Heterogeneous]: Autoriser des tableaux mélangeant des classes apparentées.
- #nlink(<handle:nelson.mixin.Scalar>)[nelson.mixin.Scalar]: Restreindre une classe à des instances scalaires.
- #nlink(<handle:nelson.mixin.SetGet>)[nelson.mixin.SetGet]: Ajouter l'accès aux propriétés par set et get à une classe handle.
- #nlink(<handle:nelson.mixin.SetGetExactNames>)[nelson.mixin.SetGetExactNames]: Accès set et get aux propriétés avec noms sensibles à la casse.
- #nlink(<handle:notify>)[notify]: Notifie les ecouteurs d'un evenement classdef.
- #nlink(<handle:properties>)[properties]: Renvoie les noms des proprietes publiques d'un objet ou d'une classe.
- #nlink(<handle:remove>)[remove]: Supprimer des entrees d'un objet.
- #nlink(<handle:set>)[set]: Définit la valeur d'une propriété d'un objet handle.
- #nlink(<handle:superclasses>)[superclasses]: Noms des superclasses d'une classe.


#nested[
#pagebreak(weak: true)
#include "addlistener.typ"
#pagebreak(weak: true)
#include "cancel.typ"
#pagebreak(weak: true)
#include "delete.typ"
#pagebreak(weak: true)
#include "dynamicprops.typ"
#pagebreak(weak: true)
#include "enumeration.typ"
#pagebreak(weak: true)
#include "events.typ"
#pagebreak(weak: true)
#include "get.typ"
#pagebreak(weak: true)
#include "handle.typ"
#pagebreak(weak: true)
#include "insert.typ"
#pagebreak(weak: true)
#include "invoke.typ"
#pagebreak(weak: true)
#include "isKey.typ"
#pagebreak(weak: true)
#include "ismethod.typ"
#pagebreak(weak: true)
#include "isprop.typ"
#pagebreak(weak: true)
#include "isvalid.typ"
#pagebreak(weak: true)
#include "listener.typ"
#pagebreak(weak: true)
#include "lookup.typ"
#pagebreak(weak: true)
#include "metaclass.typ"
#pagebreak(weak: true)
#include "methods.typ"
#pagebreak(weak: true)
#include "nelson.lang.HandlePlaceholder.typ"
#pagebreak(weak: true)
#include "nelson.lang.WeakReference.typ"
#pagebreak(weak: true)
#include "nelson.lang.invalidHandle.typ"
#pagebreak(weak: true)
#include "nelson.mixin.Copyable.typ"
#pagebreak(weak: true)
#include "nelson.mixin.CustomCompactDisplayProvider.typ"
#pagebreak(weak: true)
#include "nelson.mixin.CustomDisplay.typ"
#pagebreak(weak: true)
#include "nelson.mixin.Heterogeneous.typ"
#pagebreak(weak: true)
#include "nelson.mixin.Scalar.typ"
#pagebreak(weak: true)
#include "nelson.mixin.SetGet.typ"
#pagebreak(weak: true)
#include "nelson.mixin.SetGetExactNames.typ"
#pagebreak(weak: true)
#include "notify.typ"
#pagebreak(weak: true)
#include "properties.typ"
#pagebreak(weak: true)
#include "remove.typ"
#pagebreak(weak: true)
#include "set.typ"
#pagebreak(weak: true)
#include "superclasses.typ"
]
