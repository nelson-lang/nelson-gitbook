#import "nelson_help.typ": *

= weboptions <webtools:weboptions>

Spécifier les paramètres pour les services web RESTful

== Syntaxe

- #raw("options = weboptions()");
- #raw("options = weboptions(name, value)");

== Argument d'entrée

/ name: chaîne.
/ value: valeur correspondant au champ name.

== Argument de sortie

/ options: objet weboptions.

== Description

#strong[options \= weboptions()]; renvoie l'objet weboptions par défaut.

 Un objet weboptions peut être un argument optionnel pour les fonctions builtin webread, websave et webwrite.

 Arguments Nom-Valeur :

 #strong[UserAgent]; Identification de l'agent utilisateur : chaîne ou vecteur de caractères.

 #strong[Timeout]; Durée du timeout de connexion : scalaire numérique positif ou valeur Inf.

 #strong[Username]; Identifiant utilisateur : chaîne ou vecteur de caractères.

 #strong[Password]; Mot de passe d'authentification : chaîne ou vecteur de caractères.

 #strong[KeyName]; Nom de la clé : chaîne ou vecteur de caractères.

 #strong[KeyValue]; Valeur de la clé : chaîne, vecteur de caractères, numérique ou logique.

 #strong[HeaderFields]; Noms et valeurs des en-têtes : tableau m-by-2 de chaînes ou cellule de vecteurs de caractères.

 #strong[ContentType]; Type de contenu : chaîne. Valeurs supportées : 'auto', 'text', 'image', 'binary', 'table', 'audio', 'json', 'xmldom', 'raw'.

 #strong[ContentReader]; Lecteur de contenu : handle de fonction.

 #strong[MediaType]; Type média : chaîne. Valeurs supportées : 'auto', 'application\/x-www-form-urlencoded'.

 #strong[RequestMethod]; Méthode HTTP : chaîne. Valeurs supportées : 'auto', 'get', 'post', 'put', 'delete', 'patch'.

 #strong[ArrayFormat]; : 'csv' (par défaut), 'json', 'repeating' ou 'php'.

 #strong[CertificateFilename]; Nom de fichier des certificats racine : 'default', vide ou fichier existant.

 #strong[FollowLocation]; indique à la bibliothèque de suivre les redirections Location: envoyées par un serveur HTTP dans une réponse 30x : logique, false par défaut.


== Exemple

``````matlab
weboptions()
options = weboptions('UserAgent', 'http://www.whoishostingthis.com/tools/user-agent/')
``````


== Voir aussi

#nlink(<webtools:webread>)[webread];, #nlink(<webtools:websave>)[websave];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.6.0], [option 'FollowLocation' ajoutée],
  [2.0.0], [weboptions est une classe valeur classdef],
)

// Auteur: Allan CORNET
