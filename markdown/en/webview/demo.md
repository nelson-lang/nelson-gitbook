# demo

Browse examples from loaded Nelson modules and external toolboxes.

## 📝 Syntax

- demo()

## 📄 Description


<b>demo</b> opens the examples gallery. Calling it again refreshes the catalog and brings the existing gallery window to the foreground. 

The gallery lists the examples of every loaded module, the NFlow models and scripts (an NFlow model opens in the block-diagram editor) and the examples of external toolboxes. Running an example keeps the gallery open, so several demos can be tried in a row. 

On the desktop, the gallery is a separate window. In the web desktop, <b>demo</b> shows it as a docked <b>Examples</b> panel next to the Command Window (Help > Examples opens the same panel), so a single browser window is enough. NFlow shows the same gallery in its File > Examples sheet. 

A loaded module appears when its <b>examples/index.json</b> manifest is valid. Every entry provides a relative <b>.m</b> script path, title and description; optional tags and requirements help users find and prepare an example. 

<b>title</b> and <b>description</b> accept either one string or an object containing non-empty <b>en\_US</b> and/or <b>fr\_FR</b> strings. A missing current-language value falls back to the other available supported language. 

| Requirement | Meaning | 
| --- | --- | 
| gui | Graphical desktop or graphics backend. | 
| network | Network access to the resource used by the script. | 
| credentials | User-provided authentication data. | 
| compiler | Configured native-code compiler. | 
| mpi | MPI runtime and launcher. | 
| windows | Windows operating system. | 
| python | Compatible Python installation. | 
| julia | Compatible Julia installation. | 
| audio-input | Available audio input device. | 
| audio-output | Available audio output device. | 
| external-application | Application or local service outside Nelson. | 



## 💡 Example

Open or refresh the examples gallery.

```matlab
demo()
```


## 🔗 See also

[web](../webview/web.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
