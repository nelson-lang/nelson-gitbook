# repo

Outil de gestion de dépôt Git pour Nelson

## 📝 Syntaxe

- repo('clone', url, branch, destination)
- repo('clone', url, destination)
- repo('clone', url, branch, destination, username, password)
- repo('clone', url, destination, username, password)
- repo('clone', url, destination, Name, Value)
- repo('clone', url, branch, destination, Name, Value)
- repo('export', url, branch\_tag\_sha1, destination)
- repo('export', url, destination)
- repo('export', url, branch\_tag\_sha1, destination, username, password)
- repo('export', url, destination, username, password)
- repo('export', url, destination, Name, Value)
- repo('export', url, branch\_tag\_sha1, destination, Name, Value)
- repo('checkout', destination, branch\_tag\_sha1)
- ce = repo('branch', destination)
- ce = repo('tag', destination)
- st = repo('log', destination)
- repo('fetch', destination)
- repo('fetch', destination, username, password)
- repo('fetch', destination, Name, Value)
- repo('remove\_branch', destination, branch)
- current\_branch = repo('current\_branch', destination)
- version = repo('version')
- capabilities = repo('capabilities')

## 📥 Argument d'entrée

- url - a string: URL to a git repository.
- branch - a string: branch name.
- destination - a string: local pathname.
- branch\_tag\_sha1 - a string: a branch name, tag or sha1.
- username - a string: username used if an authentification is required.
- password - a string: password used if an authentification is required.
- Name, Value - options d'identifiants: 'Username', 'Password', 'UseAgent', 'PrivateKey', 'PublicKey', 'Passphrase'.

## 📤 Argument de sortie

- ce - a cell: list of tags or branchs.
- st - a structure: contains log information.
- current\_branch - a string: name of current branch.
- version - a string: version de libgit2 utilisee par repo.
- capabilities - a structure: fonctionnalites libgit2 disponibles dans cette construction de Nelson.

## 📄 Description


<b>repo()</b> allows to clone, checkout, fetch a git repository. 

checkout command will be forced and remove untracked filed. 

git HTTPS protocol works on all platforms. git SSH depend du build libgit2 utilise par Nelson. 

Utilisez repo('capabilities') pour verifier si HTTPS et SSH sont disponibles dans la construction libgit2 courante. 

Quand SSH n'est pas disponible, clone et fetch echouent immediatement avec un message clair pour les URLs SSH. 

Les identifiants SSH peuvent utiliser un agent avec 'UseAgent', true, ou des fichiers de cle avec 'PrivateKey', 'PublicKey' et 'Passphrase'. 

repo('export', ...) clone and remove .git directory. 

 

Tips: 

 

If you have this error:<b>callback returned unsupported credentials type</b> , checks your ~/.gitconfig file. 

You don't have some ssh or https redirection. 

Remove entries: 

[url "git@github.com:"] 

insteadOf = https://github.com/

## Fonction(s) utilisée(s)

libgit2 (https://libgit2.org/)

## 💡 Exemple



```matlab
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
```


## 🔗 Voir aussi

[webread](../webtools/webread.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
