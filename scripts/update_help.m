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
%=============================================================================
% Check if the documentation path exists
%=============================================================================
disp(['Checking if prettier are installed']);
[status, message] = unix('npm run prettier:version');
if status ~= 0
  error('prettier is not installed. Please install it');
end
%=============================================================================
ver_number = version('-number');
version_string = sprintf('v%d.%d.%d', ver_number(1), ver_number(2), ver_number(3));
%=============================================================================
doc_markdown_path = fullfile(fileparts(mfilename('fullpath')), '..', 'markdown');
if isfolder(doc_markdown_path)
  rmdir(doc_markdown_path, 's');
end
mkdir(doc_markdown_path)
%=============================================================================
disp(['Building the markdown files into ', doc_markdown_path]);
buildhelpmd(doc_markdown_path)
%=============================================================================
for lang = getavailablelanguages()'
  doc_html_path = fullfile(fileparts(mfilename('fullpath')), '..', 'docs', 'releases', lang{1}, version_string);
  if isfolder(doc_html_path)
    rmdir(doc_html_path, 's');
  end
  mkdir(doc_html_path)
  buildhelpweb(doc_html_path, lang{1});
end
%=============================================================================
% Collect all versions across all languages
current_path = fileparts(mfilename('fullpath'));
all_versions = string([]);
all_languages = getavailablelanguages();
for lang = all_languages'
  language = lang{1};
  docs_path = fullfile(current_path, '..', 'docs','releases', language);
  if isfolder(docs_path)
    dir_available = dir(docs_path);
    for i = 1:length(dir_available)
      if dir_available(i).isdir && semver(dir_available(i).name,'>0.0.0')
        if ~any(strcmp(all_versions, dir_available(i).name))
          all_versions(end+1) = dir_available(i).name;
        end
      end
    end
  end
end
all_versions = sort(all_versions, 'descend');
%=============================================================================
% Generate index for each language
for lang = all_languages'
  language = lang{1};
  docs_path = fullfile(current_path, '..', 'docs','releases', language);

  disp(['Updating the index.html for language: ', language]);
  
  % Find latest version that exists for this language
  latest_for_lang = '';
  for i = 1:length(all_versions)
    version_path = fullfile(current_path, '..', 'docs', 'releases', language, all_versions(i));
    if isfolder(version_path)
      latest_for_lang = all_versions(i);
      break;
    end
  end
  
  DOC_URL_FORMAT = ['https://nelson-lang.github.io/nelson-gitbook/releases/', language, '/%s/index.html'];
  LATEST_VERSION = char(latest_for_lang);
  LATEST_VERSION_URL = sprintf(DOC_URL_FORMAT, LATEST_VERSION); 
  content = fileread(fullfile(docs_path, '../../index_template.md'));
  content = replace(content, '[LATEST_VERSION]', ['[', LATEST_VERSION, ']']);
  content = replace(content, 'LATEST_VERSION_URL', LATEST_VERSION_URL);
  
  % Build version list showing all versions
  str = '';
  for i = 1:length(all_versions)
    version = all_versions(i);
    
    % Prioritize en_US as main link, then current language, then first available
    main_link = '';
    main_lang = '';
    
    % First check if en_US exists for this version
    en_us_path = fullfile(current_path, '..', 'docs', 'releases', 'en_US', version);
    if isfolder(en_us_path)
      main_link = sprintf('- [%s](https://nelson-lang.github.io/nelson-gitbook/releases/en_US/%s/index.html)', version, version);
      main_lang = 'en_US';
    else
      % Check if current language has this version
      current_version_path = fullfile(current_path, '..', 'docs', 'releases', language, version);
      if isfolder(current_version_path)
        main_link = sprintf('- [%s](https://nelson-lang.github.io/nelson-gitbook/releases/%s/%s/index.html)', version, language, version);
        main_lang = language;
      else
        % Find first available language
        for k = 1:length(all_languages)
          test_lang = all_languages{k};
          test_path = fullfile(current_path, '..', 'docs', 'releases', test_lang, version);
          if isfolder(test_path)
            main_link = sprintf('- [%s](https://nelson-lang.github.io/nelson-gitbook/releases/%s/%s/index.html)', version, test_lang, version);
            main_lang = test_lang;
            break;
          end
        end
      end
    end
    
    % Check for other languages for this version
    lang_links = '';
    for j = 1:length(all_languages)
      other_lang = all_languages{j};
      other_lang_path = fullfile(current_path, '..', 'docs', 'releases', other_lang, version);
      if isfolder(other_lang_path) && ~strcmp(other_lang, main_lang)
        lang_links = [lang_links, sprintf(' [(%s)](https://nelson-lang.github.io/nelson-gitbook/releases/%s/%s/index.html)', other_lang, other_lang, version)];
      end
    end
    
    if ~isempty(main_link)
      str = [str, main_link, lang_links, sprintf('\n')];
    end
  end
  
  content = replace(content, 'VERSIONS_CONTENT', str);
  filewrite(fullfile(docs_path, '../../index.md'), content);
end
%=============================================================================
% Build the index.html
%=============================================================================
disp('Building the index.html');
for lang = getavailablelanguages()'
  language = lang{1};
  current_path = fileparts(mfilename('fullpath'));
  docs_path = fullfile(current_path, '..', 'docs','releases', language);
  markdown(fullfile(docs_path, '../../index.md'), fullfile(docs_path, '../../index.html'));
end
%=============================================================================
% prettier the markdown files
%=============================================================================
disp('Prettier the markdown and html files');
[status, message] = unix('npm run prettier');
if status ~= 0
  error(['Error running prettier: ', message]);
end
%=============================================================================
