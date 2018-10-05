# Debug Defer Blocks

I spent about an hour trying to figure out why I was seeing logging, but no breakpoints being hit (in Xcode Version 10.0 (10A255)).

It seems that any code inside of a `defer` block will have its breakpoints skipped.

### Reference Screenshot

<img src="https://github.com/intere/DebugDeferBlocks/blob/master/defer_breakpoints_do_not_fire.gif?raw=true">
