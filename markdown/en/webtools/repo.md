# repo

Git repository tool for Nelson

## Syntax

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

## Input argument

- url - a string: URL to a git repository.
- branch - a string: branch name.
- destination - a string: local pathname.
- branch_tag_sha1 - a string: a branch name, tag or sha1.
- username - a string: username used if an authentification is required.
- password - a string: password used if an authentification is required.

## Output argument

- ce - a cell: list of tags or branchs.
- st - a structure: contains log information.
- current_branch - a string: name of current branch.

## Description

<p>repo() allows to clone, checkout, fetch a git repository.</p>

<p>checkout command will be forced and remove untracked filed.</p>

<p>git https protocol works on all platforms. git ssh protocol works currently on macos and linux platforms.</p>

<p>report('export', ...) clone and remove .git directory.</p>

<p></p>

<p>Tips:</p>

<p></p>

<p>If you have this error: callback returned unsupported credentials type , checks your ~/.gitconfig file.</p>

<p>You don't have some  ssh or https redirection.</p>

<p>Remove entries:</p>

<p>[url "git@github.com:"]</p>

<p>  insteadOf = https://github.com/</p>

## Used function(s)

libgit2 (https://libgit2.org/)

## Example

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

## See also

[webread](../webtools/webread.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
