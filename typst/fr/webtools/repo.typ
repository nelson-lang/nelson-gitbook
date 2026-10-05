#import "nelson_help.typ": *

= repo <webtools:repo>

Outil de gestion de dépôt Git pour Nelson

== Syntaxe

- #raw("repo('clone', url, branch, destination)");
- #raw("repo('clone', url, destination)");
- #raw("repo('clone', url, branch, destination, username, password)");
- #raw("repo('clone', url, destination, username, password)");
- #raw("repo('clone', url, destination, Name, Value)");
- #raw("repo('clone', url, branch, destination, Name, Value)");
- #raw("repo('export', url, branch_tag_sha1, destination)");
- #raw("repo('export', url, destination)");
- #raw("repo('export', url, branch_tag_sha1, destination, username, password)");
- #raw("repo('export', url, destination, username, password)");
- #raw("repo('export', url, destination, Name, Value)");
- #raw("repo('export', url, branch_tag_sha1, destination, Name, Value)");
- #raw("repo('checkout', destination, branch_tag_sha1)");
- #raw("ce = repo('branch', destination)");
- #raw("ce = repo('tag', destination)");
- #raw("st = repo('log', destination)");
- #raw("repo('fetch', destination)");
- #raw("repo('fetch', destination, username, password)");
- #raw("repo('fetch', destination, Name, Value)");
- #raw("repo('remove_branch', destination, branch)");
- #raw("current_branch = repo('current_branch', destination)");
- #raw("version = repo('version')");
- #raw("capabilities = repo('capabilities')");

== Argument d'entrée

/ url: a string: URL to a git repository.
/ branch: a string: branch name.
/ destination: a string: local pathname.
/ branch\_tag\_sha1: a string: a branch name, tag or sha1.
/ username: a string: username used if an authentification is required.
/ password: a string: password used if an authentification is required.
/ Name, Value: options d'identifiants: 'Username', 'Password', 'UseAgent', 'PrivateKey', 'PublicKey', 'Passphrase'.

== Argument de sortie

/ ce: a cell: list of tags or branchs.
/ st: a structure: contains log information.
/ current\_branch: a string: name of current branch.
/ version: a string: version de libgit2 utilisee par repo.
/ capabilities: a structure: fonctionnalites libgit2 disponibles dans cette construction de Nelson.

== Description

#strong[repo()]; allows to clone, checkout, fetch a git repository.

 checkout command will be forced and remove untracked filed.

 git HTTPS protocol works on all platforms. git SSH depend du build libgit2 utilise par Nelson.

 Utilisez repo('capabilities') pour verifier si HTTPS et SSH sont disponibles dans la construction libgit2 courante.

 Quand SSH n'est pas disponible, clone et fetch echouent immediatement avec un message clair pour les URLs SSH.

 Les identifiants SSH peuvent utiliser un agent avec 'UseAgent', true, ou des fichiers de cle avec 'PrivateKey', 'PublicKey' et 'Passphrase'.

 repo('export', ...) clone and remove .git directory.

 

 Tips:

 

 If you have this error:#strong[callback returned unsupported credentials type]; , checks your \~\/.gitconfig file.

 You don't have some ssh or https redirection.

 Remove entries:

 \[url "git\@github.com:"\]

 insteadOf \= https:\/\/github.com\/


== Fonction(s) utilisée(s)

libgit2 (https:\/\/libgit2.org\/)

== Exemple

``````matlab
url = 'https://github.com/nelson-lang/module_skeleton.git';
destination = [tempdir(), 'demo_repo'];
if isdir(destination)
    rmdir(destination, 's');
end
mkdir(destination);
repo('clone', url, destination)
repo('tag', destination)
repo('branch', destination)
repo('current_branch', destination)
repo('log', destination)
``````


== Voir aussi

#nlink(<webtools:webread>)[webread];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
