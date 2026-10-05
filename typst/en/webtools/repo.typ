#import "nelson_help.typ": *

= repo <webtools:repo>

Git repository tool for Nelson

== Syntax

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

== Input argument

/ url: a string: URL to a git repository.
/ branch: a string: branch name.
/ destination: a string: local pathname.
/ branch\_tag\_sha1: a string: a branch name, tag or sha1.
/ username: a string: username used if an authentification is required.
/ password: a string: password used if an authentification is required.
/ Name, Value: credential options: 'Username', 'Password', 'UseAgent', 'PrivateKey', 'PublicKey', 'Passphrase'.

== Output argument

/ ce: a cell: list of tags or branches.
/ st: a structure: contains log information.
/ current\_branch: a string: name of current branch.
/ version: a string: libgit2 version used by repo.
/ capabilities: a structure: libgit2 features available in this Nelson build.

== Description

#strong[repo()]; allows to clone, checkout, fetch a git repository.

 checkout command will be forced and remove untracked filed.

 git HTTPS protocol works on all platforms. git SSH protocol depends on the libgit2 build used by Nelson.

 Use repo('capabilities') to check if HTTPS and SSH are available in the current libgit2 build.

 When SSH is not available, clone and fetch fail fast with a clear message for SSH URLs.

 SSH credentials can use an agent with 'UseAgent', true, or key files with 'PrivateKey', 'PublicKey' and 'Passphrase'.

 repo('export', ...) clone and remove .git directory.

 

 Tips:

 

 If you have this error:#strong[callback returned unsupported credentials type]; , checks your \~\/.gitconfig file.

 You don't have some ssh or https redirection.

 Remove entries:

 \[url "git\@github.com:"\]

 insteadOf \= https:\/\/github.com\/


== Used function(s)

libgit2 (https:\/\/libgit2.org\/)

== Example

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


== See also

#nlink(<webtools:webread>)[webread];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
