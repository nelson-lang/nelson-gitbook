# repo

Outil de gestion de dépôt Git pour Nelson

## 📝 Syntaxe

- repo('clone', url, branch, destination)
- repo('clone', url, destination)
- repo('clone', url, branch, destination, username, password)
- repo('clone', url, destination, username, password)
- repo('export', url, branch_tag_sha1, destination)
- repo('export', url, destination)
- repo('export', url, branch_tag_sha1, destination, username, password)
- repo('export', url, destination, username, password)
- repo('checkout', destination, branch_tag_sha1)
- ce = repo('branch', destination)
- ce = repo('tag', destination)
- st = repo('log', destination)
- repo('fetch', destination)
- repo('fetch', destination, username, password)
- repo('remove_branch', destination, branch)
- current_branch = repo('current_branch', destination)

## 📥 Argument d'entrée

- url - a string: URL to a git repository.
- branch - a string: branch name.
- destination - a string: local pathname.
- branch_tag_sha1 - a string: a branch name, tag or sha1.
- username - a string: username used if an authentification is required.
- password - a string: password used if an authentification is required.

## 📤 Argument de sortie

- ce - a cell: list of tags or branchs.
- st - a structure: contains log information.
- current_branch - a string: name of current branch.

## 📄 Description

<b>repo()</b> allows to clone, checkout, fetch a git repository.

checkout command will be forced and remove untracked filed.

git https protocol works on all platforms. git ssh protocol works currently on macos and linux platforms.

report('export', ...) clone and remove .git directory.

Tips:

If you have this error: <b>callback returned unsupported credentials type</b> , checks your ~/.gitconfig file.

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

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
