# weboptions

Spécifier les paramètres pour les services web RESTful

## Syntaxe

- options = weboptions()
- options = weboptions(name, value)

## Argument d'entrée

- name - chaîne.
- value - valeur correspondant au champ name.

## Argument de sortie

- options - objet weboptions.

## Description

<p>options = weboptions() renvoie l'objet weboptions par défaut.</p>

<p>Un objet weboptions peut être un argument optionnel pour les fonctions builtin webread, websave et webwrite.</p>

<p>Arguments Nom-Valeur :</p>

<p>UserAgent Identification de l'agent utilisateur : chaîne ou vecteur de caractères.</p>

<p>Timeout Durée du timeout de connexion : scalaire numérique positif ou valeur Inf.</p>

<p>Username Identifiant utilisateur : chaîne ou vecteur de caractères.</p>

<p>Password Mot de passe d'authentification : chaîne ou vecteur de caractères.</p>

<p>KeyName Nom de la clé : chaîne ou vecteur de caractères.</p>

<p>KeyValue Valeur de la clé : chaîne, vecteur de caractères, numérique ou logique.</p>

<p>HeaderFields Noms et valeurs des en-têtes : tableau m-by-2 de chaînes ou cellule de vecteurs de caractères.</p>

<p>ContentType Type de contenu : chaîne. Valeurs supportées : 'auto', 'text', 'audio', 'binary', 'json', 'raw'.</p>

<p>ContentReader Lecteur de contenu : handle de fonction.</p>

<p>MediaType Type média : chaîne. Valeurs supportées : 'auto', 'application/x-www-form-urlencoded'.</p>

<p>RequestMethod Méthode HTTP : chaîne. Valeurs supportées : 'auto', 'get', 'post', 'put', 'delete', 'patch'.</p>

<p>ArrayFormat : 'csv' (par défaut), 'json', 'repeating' ou 'php'.</p>

<p>CertificateFilename Nom de fichier des certificats racine : chaîne.</p>

<p>FollowLocation indique à la bibliothèque de suivre les redirections Location: envoyées par un serveur HTTP dans une réponse 30x : logique, false par défaut.</p>

## Exemple

```matlab
weboptions()
options = weboptions('UserAgent', 'http://www.whoishostingthis.com/tools/user-agent/')
```

## Voir aussi

[webread](../webtools/webread.md), [websave](../webtools/websave.md).

## Historique

| Version | Description                     |
| ------- | ------------------------------- |
| 1.0.0   | version initiale                |
| 1.6.0   | option 'FollowLocation' ajoutée |

## Auteur

Allan CORNET
