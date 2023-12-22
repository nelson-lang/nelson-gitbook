# quit

Terminate Nelson application

## Syntax

- quit
- quit(status)
- quit('force')
- quit('cancel')
- quit(status, 'force')

## Description

  <p><b>quit</b> terminates current Nelson application.</p>
  <p><b>quit('cancel')</b> command is designed specifically for utilization within a finish.m script, preventing the termination process.</p>
  <p>Its functionality is restricted to this context.</p>
  <p>On the other hand, <b>quit('force')</b> disregards the finish.m script and immediately concludes Nelson.</p>
  <p>Employ this syntax when you need to override the finish script, ensuring a smooth exit in case the script poses obstacles to quitting.</p>
  <p>When you utilize <b>quit(code)</b>, Nelson exits with the specified value as the exit code.</p>
  <p>If you append "force" to this command <b>quit(code, 'force')</b> it enforces an immediate termination, bypassing finish.m and incorporating the provided exit code.</p>
  <p>The exit code, denoted by "code" and specified as a signed integer, determines the status of Nelson termination.</p>
  <p>On Windows® platforms, Nelson furnishes exit codes within the range of INT_MIN to INT_MAX (-2147483647 to 2147483647).</p>
  <p>On Linux® and macOS platforms, Nelson confines exit codes to the range of 0 to 255.</p>
  <p>This distinction should be considered when interpreting or handling exit codes in Nelson scripts or processes.</p>

## Example

Beware this example will close Nelson

```matlab
quit
```

## See also

[exit](exit.md), [finish.m](../engine/finish.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
