# Parallel

The parallel module provides tools for running computations asynchronously in the background, managing task scheduling, and retrieving results.

It enables Nelson programs to execute functions concurrently, improving efficiency and responsiveness by offloading work to background workers.

## Functions

- [afterAll](afterAll.md) - Run function after all functions finish running in the background.
- [afterEach](afterEach.md) - Run function after each function finish running in the background.
- [backgroundPool](backgroundPool.md) - Environment for running nelson's code in the background.
- [cancel](cancel.md) - Stop function running in the background.
- [cancelAll](cancelAll.md) - Stop all functions running in the background.
- [fetchNext](fetchNext.md) - Retrieve next unread outputs from FevalFuture array.
- [fetchOutputs](fetchOutputs.md) - Retrieve results from function running in the background pool.
- [parfeval](parfeval.md) - Run function in background.
- [wait](wait.md) - Wait for futures to be completed.
