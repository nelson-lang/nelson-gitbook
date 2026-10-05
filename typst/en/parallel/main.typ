#import "nelson_help.typ": *

= Parallel

The parallel module provides tools for running computations asynchronously in the background, managing task scheduling, and retrieving results.

 It enables Nelson programs to execute functions concurrently, improving efficiency and responsiveness by offloading work to background workers.

== Functions

- #nlink(<parallel:afterAll>)[afterAll]: Run function after all functions finish running in the background.
- #nlink(<parallel:afterEach>)[afterEach]: Run function after each function finish running in the background.
- #nlink(<parallel:backgroundPool>)[backgroundPool]: Environment for running nelson's code in the background.
- #nlink(<parallel:cancel>)[cancel]: Stop function running in the background.
- #nlink(<parallel:cancelAll>)[cancelAll]: Stop all functions running in the background.
- #nlink(<parallel:fetchNext>)[fetchNext]: Retrieve next unread outputs from FevalFuture array.
- #nlink(<parallel:fetchOutputs>)[fetchOutputs]: Retrieve results from function running in the background pool.
- #nlink(<parallel:parfeval>)[parfeval]: Run function in background.
- #nlink(<parallel:wait>)[wait]: Wait for futures to be completed.


#nested[
#pagebreak(weak: true)
#include "afterAll.typ"
#pagebreak(weak: true)
#include "afterEach.typ"
#pagebreak(weak: true)
#include "backgroundPool.typ"
#pagebreak(weak: true)
#include "cancel.typ"
#pagebreak(weak: true)
#include "cancelAll.typ"
#pagebreak(weak: true)
#include "fetchNext.typ"
#pagebreak(weak: true)
#include "fetchOutputs.typ"
#pagebreak(weak: true)
#include "parfeval.typ"
#pagebreak(weak: true)
#include "wait.typ"
]
