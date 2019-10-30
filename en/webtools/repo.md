

# repo

Git repository tool for Nelson

## Syntax

- repo('clone', url, branch, destination)
- repo('clone', url, destination)
- repo('checkout', destination, branch_tag_sha1)
- ce = repo('branch', destination)
- ce = repo('tag', destination)
- st = repo('log', destination)
- repo('fetch', destination)
- repo('remove_branch', destination, branch)
- current_branch = repo('current_branch', destination)

## Input argument

 - url - a string: URL to a git repository.
 - branch - a string: branch name.
 - destination - a string: local pathname.
 - branch_tag_sha1 - a string: a branch name, tag or sha1.

## Output argument

 - ce - a cell: list of tags or branchs.
 - st - a structure: contains log informations.
 - current_branch - a string: name of current branch.

## Description


  <p><b>repo()</b> allows to clone, checkout, fetch a git repository.</p>
  <p>checkout command will be forced and remove untracked filed.</p>


Used function(s)

libgit2 (https://libgit2.org/)

## Example

```matlab
url = 'https://github.com/Nelson-numerical-software/module_skeleton.git';
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

[webread](webread.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



