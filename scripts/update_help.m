%=============================================================================
% Copyright (c) 2024-present Allan CORNET (Nelson)
%=============================================================================
% This file is part of the Nelson.
%=============================================================================
% LICENCE_BLOCK_BEGIN
% SPDX-License-Identifier: LGPL-3.0-or-later
% LICENCE_BLOCK_END
%=============================================================================
% Nelson help update script
%=============================================================================
% Check if mdbook and prettier are installed
%=============================================================================
disp('[1/9] - Checking if mdbook and prettier are installed');
[status, message] = unix('mdbook --version');
if status ~= 0
  error('mdbook is not installed. Please install it');
end
[status, message] = unix('npm run prettier:version');
if status ~= 0
  error('prettier is not installed. Please install it');
end
%=============================================================================
% Check if the documentation path exists
%=============================================================================
disp('[2/9] - Checking if the documentation path exists');
ver_number = version('-number');
version_string = sprintf('v%d.%d.%d', ver_number(1), ver_number(2), ver_number(3));
current_path = fileparts(nfilename('fullpath'), 'path');
language = 'en_US';
markdown_path = fullpath(fullfile(current_path, '..', 'markdown'));
docs_path = fullpath(fullfile(current_path, '..', 'docs','releases', language));
if ~isdir(docs_path)
  error('The documentation path does not exist.');
end
destination_docs_path = fullfile(docs_path, version_string);
if isdir(destination_docs_path)
  error(['The documentation path already exists for ', version_string]);
end
%=============================================================================
% Build the markdown files
%=============================================================================
disp('[3/9] - Building the markdown files');
if isdir(markdown_path)
  [res, msg] = rmdir(markdown_path, 's');
  if (res ~= true)
    error(['Error deleting ', markdown_path, ': ', msg]);
  end
end
mkdir(markdown_path);
buildhelpmd(markdown_path);
%=============================================================================
% prettier the markdown files
%=============================================================================
disp('[4/9] - Prettier the markdown files');
[status, message] = unix('npm run prettier');
if status ~= 0
  error(['Error running prettier: ', message]);
end
%=============================================================================
% Build the documentation
%=============================================================================
disp('[5/9] - Building the documentation');
mkdir(destination_docs_path);
current_dir = pwd();
cd(fullpath(fullfile(current_path, '..')));
[status, message] = unix(['mdbook build . -o -d ', destination_docs_path]);
cd(current_dir);
if status ~= 0
  error(['Error building the documentation: ', message]);
end
%=============================================================================
% Update the index.html
%=============================================================================
disp('[6/9] - Updating the index.html');
dir_available = dir(docs_path);
versions = string([]);
for i = 1:length(dir_available)
  if dir_available(i).isdir && semver(dir_available(i).name,'>0.0.0')
    versions(end+1) = dir_available(i).name;
  end
end
versions = sort(versions, 'descend');
%=============================================================================
% generate the index.html with the list of versions
%=============================================================================
disp('[7/9] - Generating the index.html with the list of versions');
DOC_URL_FORMAT = 'https://nelson-lang.github.io/nelson-gitbook/releases/en_US/%s/index.html';
LATEST_VERSION = char(versions(1));
LATEST_VERSION_URL = sprintf(DOC_URL_FORMAT, LATEST_VERSION); 
content = fileread(fullfile(docs_path, '../../index_template.md'));
content = replace(content, '[LATEST_VERSION]', ['[', LATEST_VERSION, ']']);
content = replace(content, 'LATEST_VERSION_URL', LATEST_VERSION_URL);
format_str = '- [%s](https://nelson-lang.github.io/nelson-gitbook/releases/en_US/%s/index.html)\n';
str = '';
for i = 1:length(versions)
  str = [str, sprintf(format_str, versions(i), versions(i))];
end
content = replace(content, 'VERSIONS_CONTENT', str);
filewrite(fullfile(docs_path, '../../index.md'), content);
%=============================================================================
% Build the index.html
%=============================================================================
disp('[8/9] - Building the index.html');
markdown(fullfile(docs_path, '../../index.md'), fullfile(docs_path, '../../index.html'));
%=============================================================================
% prettier the markdown files
%=============================================================================
disp('[9/9] - Prettier the markdown and html files');
[status, message] = unix('npm run prettier');
if status ~= 0
  error(['Error running prettier: ', message]);
end
%=============================================================================
