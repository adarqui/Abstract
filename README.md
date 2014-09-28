There's so much stuff to cleanup. It's ridic.

This is going to be a "master repo" for all of the various implementations. Briefly, the idea is simple:

mk<Interface> <url>

For example:

```
mkQueue "redis://localhost:6379"
mkQueue "chan://"
mkCounter "redis://lab:6379"
mkCounter "memcache://lab"
...
```
