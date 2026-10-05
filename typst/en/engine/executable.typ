#import "nelson_help.typ": *

= executable <engine:executable>

Executables to start Nelson software.

== Syntax

- #raw("nelson arg1 ... argn");
- #raw("nelson-cli arg1 ... argn");
- #raw("nelson-adv-cli arg1 ... argn");
- #raw("nelson-gui arg1 ... argn");
- #raw("nelson --webview [--url host] [--port port]");
- #raw("nelson --web [--url host] [--port port]");
- #raw("nelson-webview [--web] [--url host] [--port port]");
- #raw("nelson-cli options -- user_arg1 ... user_argn");

== Input argument

/ -cli: selects #strong[nelson-cli]; when passed to the #strong[nelson]; launcher.
/ -adv-cli: selects #strong[nelson-adv-cli]; when passed to the #strong[nelson]; launcher.
/ -gui: selects #strong[nelson-gui]; when passed to the #strong[nelson]; launcher.
/ --webview: selects #strong[nelson-webview]; in desktop webview mode when passed to the #strong[nelson]; launcher. Passed directly to #strong[nelson-adv-cli]; it is instead an option that renders figures with the web (RenderWeb) backend, with no Qt figure windows, while keeping the terminal REPL.
/ --web: selects #strong[nelson-webview]; in HTTP server mode when passed to the #strong[nelson]; launcher. The same option selects server mode for the direct #strong[nelson-webview]; executable.
/ --url host: sets the HTTP host. This option is valid only with #strong[--web];, #strong[--webview];, or the direct #strong[nelson-webview]; executable.
/ --port port: sets the web port from 1 to 65535. This option is valid only with #strong[--web];, #strong[--webview];, or the direct #strong[nelson-webview]; executable.
/ --: stops Nelson option parsing. Arguments after this separator are returned by #strong[argv('user')];.
/ -e, --execute command: executes a Nelson command after startup. Options #strong[-e]; and #strong[-f]; are mutually exclusive.
/ -f, --file filename: executes a Nelson script file after startup. Options #strong[-e]; and #strong[-f]; are mutually exclusive.
/ -F, --file-ipc filename: executes a Nelson script file in an existing Nelson process or creates one. GUI mode only.
/ --help, -h: displays help about program options.
/ --version, -v: returns Nelson version.
/ --vscode: enables Visual Studio Code mode.
/ --open, -o filename1 \[filename2 ...\]: opens one or more valid existing files in the text editor. GUI mode only.
/ --mat, -m filename1 \[filename2 ...\]: loads one or more valid existing .nh5 or .mat files.
/ --nostartup: disables the main Nelson startup script.
/ --nousermodules: disables loading user modules.
/ --nouserstartup: disables the user startup script.
/ --minimize: minimizes the main window. GUI mode only.
/ --noipc: disables interprocess features.
/ --withoutfilewatcher: disables file watcher features for this session.
/ --noaudio: disables audio module startup code.
/ --without\_python: disables python\_engine module startup code.
/ --language, -l lang: sets the session language. Currently, lang can be: fr\_FR en\_US.
/ --quiet, -q: starts without displaying the banner and version.
/ --timeout seconds: kills the Nelson process after the specified positive number of seconds.

== Description

#strong[nelson-cli];: basic terminal, no gui framework dependency, no history, no completion.

 #strong[nelson-adv-cli];: advanced terminal, no graphical console, history and completion available.

 #strong[nelson-gui];: graphical console, history and completion available.

 #strong[nelson --webview]; and #strong[nelson-webview]; open a native desktop webview by default with a private localhost port that is not printed. Supplying #strong[--url]; or #strong[--port]; keeps the webview open and publishes the same session at the selected HTTP address. If the native webview is unavailable, Nelson stops with an error.

 #strong[nelson --web]; and #strong[nelson-webview --web]; start an HTTP server without opening a desktop window and print the served URL.

 Mode selector options #strong[-cli];, #strong[-adv-cli];, #strong[-gui];, #strong[--webview]; and launcher-level #strong[--web]; are only valid for the generic #strong[nelson]; launcher. Direct executables such as #strong[nelson-cli];, #strong[nelson-adv-cli]; and #strong[nelson-gui]; reject them before #strong[--];. The single exception is #strong[nelson-adv-cli --webview];, where #strong[--webview]; is accepted as an option that switches the figure backend to web (RenderWeb) rendering.

 After #strong[--];, mode selector tokens are normal user arguments and can be read with #strong[argv('user')];.

 Module startup arguments such as #strong[--noaudio]; and #strong[--without\_python]; remain visible in #strong[argv()]; for compatibility. New command builders should place user arguments after #strong[--]; and read them with #strong[argv('user')];.

 Quotes used to group arguments are interpreted by the operating system or shell before Nelson starts. Use a portable form such as #strong[nelson-cli -e "disp('hello world'); quit"];.

 If Nelson is installed on Windows, the #strong[NELSON\_RUNTIME\_PATH]; environment variable is defined and can be used to call #strong["%NELSON\_RUNTIME\_PATH%\\nelson.bat"];.


== Examples

``````matlab
nelson-adv-cli -q -e "a = 1 + 2"
``````

``````matlab
nelson-cli -e "disp(argv('user')); quit" -- "a b" "c d"
``````

``````matlab
nelson-gui --help
``````


== See also

#nlink(<engine:argv>)[argv];, #nlink(<engine:startup>)[startup];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.4.0], [--without\_python added],
  [1.11.0], [About NELSON\_RUNTIME\_PATH environment variable added],
  [1.11.0], [--vscode argument],
)

// Author: Allan CORNET
