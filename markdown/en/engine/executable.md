# executable

Executables to start Nelson software.

## 📝 Syntax

- nelson arg1 ... argn
- nelson-cli arg1 ... argn
- nelson-adv-cli arg1 ... argn
- nelson-gui arg1 ... argn
- nelson --webview [--url host] [--port port]
- nelson --web [--url host] [--port port]
- nelson-webview [--web] [--url host] [--port port]
- nelson-cli options -- user\_arg1 ... user\_argn

## 📥 Input argument

- -cli - selects <b>nelson-cli</b> when passed to the <b>nelson</b> launcher.
- -adv-cli - selects <b>nelson-adv-cli</b> when passed to the <b>nelson</b> launcher.
- -gui - selects <b>nelson-gui</b> when passed to the <b>nelson</b> launcher.
- --webview - selects <b>nelson-webview</b> in desktop webview mode when passed to the <b>nelson</b> launcher. Passed directly to <b>nelson-adv-cli</b> it is instead an option that renders figures with the web (RenderWeb) backend, with no Qt figure windows, while keeping the terminal REPL.
- --web - selects <b>nelson-webview</b> in HTTP server mode when passed to the <b>nelson</b> launcher. The same option selects server mode for the direct <b>nelson-webview</b> executable.
- --url host - sets the HTTP host. This option is valid only with <b>--web</b>, <b>--webview</b>, or the direct <b>nelson-webview</b> executable.
- --port port - sets the web port from 1 to 65535. This option is valid only with <b>--web</b>, <b>--webview</b>, or the direct <b>nelson-webview</b> executable.
- -- - stops Nelson option parsing. Arguments after this separator are returned by <b>argv('user')</b>.
- -e, --execute command - executes a Nelson command after startup. Options <b>-e</b> and <b>-f</b> are mutually exclusive.
- -f, --file filename - executes a Nelson script file after startup. Options <b>-e</b> and <b>-f</b> are mutually exclusive.
- -F, --file-ipc filename - executes a Nelson script file in an existing Nelson process or creates one. GUI mode only.
- --help, -h - displays help about program options.
- --version, -v - returns Nelson version.
- --vscode - enables Visual Studio Code mode.
- --open, -o filename1 [filename2 ...] - opens one or more valid existing files in the text editor. GUI mode only.
- --mat, -m filename1 [filename2 ...] - loads one or more valid existing .nh5 or .mat files.
- --nostartup - disables the main Nelson startup script.
- --nousermodules - disables loading user modules.
- --nouserstartup - disables the user startup script.
- --minimize - minimizes the main window. GUI mode only.
- --noipc - disables interprocess features.
- --withoutfilewatcher - disables file watcher features for this session.
- --noaudio - disables audio module startup code.
- --without\_python - disables python\_engine module startup code.
- --language, -l lang - sets the session language. Currently, lang can be: fr\_FR en\_US.
- --quiet, -q - starts without displaying the banner and version.
- --timeout seconds - kills the Nelson process after the specified positive number of seconds.

## 📄 Description


<b>nelson-cli</b>: basic terminal, no gui framework dependency, no history, no completion. 

<b>nelson-adv-cli</b>: advanced terminal, no graphical console, history and completion available. 

<b>nelson-gui</b>: graphical console, history and completion available. 

<b>nelson --webview</b> and <b>nelson-webview</b> open a native desktop webview by default with a private localhost port that is not printed. Supplying <b>--url</b> or <b>--port</b> keeps the webview open and publishes the same session at the selected HTTP address. If the native webview is unavailable, Nelson stops with an error. 

<b>nelson --web</b> and <b>nelson-webview --web</b> start an HTTP server without opening a desktop window and print the served URL. 

Mode selector options <b>-cli</b>, <b>-adv-cli</b>, <b>-gui</b>, <b>--webview</b> and launcher-level <b>--web</b> are only valid for the generic <b>nelson</b> launcher. Direct executables such as <b>nelson-cli</b>, <b>nelson-adv-cli</b> and <b>nelson-gui</b> reject them before <b>--</b>. The single exception is <b>nelson-adv-cli --webview</b>, where <b>--webview</b> is accepted as an option that switches the figure backend to web (RenderWeb) rendering. 

After <b>--</b>, mode selector tokens are normal user arguments and can be read with <b>argv('user')</b>. 

Module startup arguments such as <b>--noaudio</b> and <b>--without\_python</b> remain visible in <b>argv()</b> for compatibility. New command builders should place user arguments after <b>--</b> and read them with <b>argv('user')</b>. 

Quotes used to group arguments are interpreted by the operating system or shell before Nelson starts. Use a portable form such as <b>nelson-cli -e "disp('hello world'); quit"</b>. 

If Nelson is installed on Windows, the <b>NELSON\_RUNTIME\_PATH</b> environment variable is defined and can be used to call <b>"%NELSON\_RUNTIME\_PATH%\\nelson.bat"</b>.

## 💡 Examples



```matlab
nelson-adv-cli -q -e "a = 1 + 2"
```


```matlab
nelson-cli -e "disp(argv('user')); quit" -- "a b" "c d"
```


```matlab
nelson-gui --help
```


## 🔗 See also

[argv](../engine/argv.md), [startup](../engine/startup.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 1.4.0   | --without_python added |
| 1.11.0   | About NELSON_RUNTIME_PATH environment variable added |
| 1.11.0   | --vscode argument |

<!--
## 👤 Author

Allan CORNET
-->
