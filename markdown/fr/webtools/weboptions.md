# weboptions

Spécifier les paramètres pour les services web RESTful

## 📝 Syntaxe

- options = weboptions()
- options = weboptions(name, value)

## 📥 Argument d'entrée

- name - chaîne.
- value - valeur correspondant au champ name.

## 📤 Argument de sortie

- options - objet weboptions.

## 📄 Description

<b>options = weboptions()</b> renvoie l'objet weboptions par défaut.

Un objet weboptions peut être un argument optionnel pour les fonctions builtin webread, websave et webwrite.

Arguments Nom-Valeur :

<b>UserAgent</b> Identification de l'agent utilisateur : chaîne ou vecteur de caractères.

<b>Timeout</b> Durée du timeout de connexion : scalaire numérique positif ou valeur Inf.

<b>Username</b> Identifiant utilisateur : chaîne ou vecteur de caractères.

<b>Password</b> Mot de passe d'authentification : chaîne ou vecteur de caractères.

<b>KeyName</b> Nom de la clé : chaîne ou vecteur de caractères.

<b>KeyValue</b> Valeur de la clé : chaîne, vecteur de caractères, numérique ou logique.

<b>HeaderFields</b> Noms et valeurs des en-têtes : tableau m-by-2 de chaînes ou cellule de vecteurs de caractères.

<b>ContentType</b> Type de contenu : chaîne. Valeurs supportées : 'auto', 'text', 'audio', 'binary', 'json', 'raw'.

<b>ContentReader</b> Lecteur de contenu : handle de fonction.

<b>MediaType</b> Type média : chaîne. Valeurs supportées : 'auto', 'application/x-www-form-urlencoded'.

<b>RequestMethod</b> Méthode HTTP : chaîne. Valeurs supportées : 'auto', 'get', 'post', 'put', 'delete', 'patch'.

<b>ArrayFormat</b> : 'csv' (par défaut), 'json', 'repeating' ou 'php'.

<b>CertificateFilename</b> Nom de fichier des certificats racine : chaîne.

<b>FollowLocation</b> indique à la bibliothèque de suivre les redirections Location: envoyées par un serveur HTTP dans une réponse 30x : logique, false par défaut.

## 💡 Exemple

```matlab
weboptions()
options = weboptions('UserAgent', 'http://www.whoishostingthis.com/tools/user-agent/')
```

## 🔗 Voir aussi

[webread](../webtools/webread.md), [websave](../webtools/websave.md).

## 🕔 Historique

| Version | 📄 Description                  |
| ------- | ------------------------------- |
| 1.0.0   | version initiale                |
| 1.6.0   | option 'FollowLocation' ajoutée |

## 👤 Auteur

Allan CORNET
