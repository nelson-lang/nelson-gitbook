

# profile

Profile execution time for Macro functions.

## Syntax

- profile on
- profile off
- profile resume
- profile clear
- status = profile('status')
- p = profile('info')
- profile('show', sortOption)
- profile('show', sortOption, nbLines)

## Input argument

 - sortOption - a string: 'nfl' by name file line, 'line' by line, 'percalls', 'totaltime', 'filename', 'function' or 'nbcalls'.
 - nbLines - a integer value: number of lines to display.

## Description


  <p>Profiling is a way to measure where Macro function spend times.</p>
  <p><b>s = profile('status')</b> returns a structure with the current status of the profiler.</p>
  <p><b>p = profile('info')</b> returns a structure with collected profiling data.</p>
  <p><b>profile('on')</b> starts profiler.</p>
  <p><b>profile('off')</b> stops profiler. Collected profiling data will be retrieved later with <b>p = profile ('info')</b>.</p>
  <p><b>profile('clear')</b> clears collected profiling data.</p>
  <p><b>profile('resume')</b> restarts and continue and extends collected profiling data.</p>


## Examples

```matlab
profile on
sind(5)
profile off
profile('show')
profile('show', 'totaltime')
profile('show', 'totaltime', 4)
```
```matlab
profile on
sind(5)
profile off
profsave(profile('info'), [tempdir(), 'profile_results'])
unix([tempdir(), 'profile_results/index.html'])
```

## See also

[profsave](profsave.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



