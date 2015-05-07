# docker-leiningen

A simple docker image containing a JDK and Leiningen.

## Gotchas

If you want to start an nrepl server from a container and
connect to it from outside, make sure to start it on the
`0.0.0.0` interface:

```
lein trampoline repl :headless :host 0.0.0.0 :port 3000
```

It's also probably necessary to specify the port so you can statically
expose it.
