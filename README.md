# Debug Defer Blocks

I spent about an hour trying to figure out why I was seeing logging, but no breakpoints being hit (in Xcode Version 10.0 (10A255)).

It seems that any code inside of a `defer` block will have its breakpoints skipped.


### Reproducing this issue
1. Clone this project
2. Set breakpoints in `ViewController.swift` at lines `17` and `20`
3. Run the project

You'll notice that the breakpoint at line 20 fires, but the breakpoint at line 17 never fires.


### Workaround
[Here's a workaround for this issue](https://github.com/intere/DebugDeferBlocks/blob/6af89023721bf8f3acb73d89989ab68f0ffa4d7c/DebugDeferBlocks/ViewController.swift#L23-L25)
Despite the breakpoint at line 17 not being hit a breakpoint inside of a function that's called from the `defer` block **is** hit!


### Reference Screenshot

<img src="https://github.com/intere/DebugDeferBlocks/blob/master/defer_breakpoints_do_not_fire.gif?raw=true">
