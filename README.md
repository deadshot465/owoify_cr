# owoify_cr

Turning your worst nightmare into a Crystal shard.

This is a Crystal port of [mohan-cao's owoify-js](https://github.com/mohan-cao/owoify-js), which will help you turn any string into nonsensical babyspeak similar to LeafySweet's infamous Chrome extension.

Just like my other Owoify ports, three levels of owoness are available:

1. **owo (default)**: The most vanilla one.
2. **uwu**: The moderate one.
3. **uvu**: Litewawwy unweadabwal.

Please refer to the original [owoify-js repository](https://github.com/mohan-cao/owoify-js) for more information.

Seriously, if you have seen my other ports, you probably have already known the details.

## Reason for development

Because [crystalshards.xyz](https://crystalshards.xyz/) doesn't have any owoify package, and since I have already ported it to several languages, I might as well just keep porting it. Furthermore, Crystal is a compiled, statically typed language which features Ruby's joy to write and expressiveness, so of course it deserves a owoify package.

Yes, this is the latest port after [owoify_ex](https://github.com/deadshot465/owoify_ex) (Elixir). Also check out my [owoifyKt](https://github.com/deadshot465/owoifyKt), which just got online on Maven Central yesterday.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     owoify_cr:
       github: deadshot465/owoify_cr
   ```

2. Run `shards install`

## Usage

```crystal
require "owoify_cr"

puts Owoify.owoify("This is the string to owo! Kinda cute isn't it?")
puts Owoify.owoify("This is the string to owo! Kinda cute isn't it?", :uvu)

# Example output:
# This is teh stwing two owo! Kinda cute isn't it?
# fwis is teh stwing two owowowo (*^.^*) Kinda cute isn't it?
```

owoify_cr is implemented as a function inside the module Owoify. That means you don't need to create an instance of any class; instead, just call the method owoify with the module name.

## Development

Pull requests and issues are extremely welcomed. I also might update it from time to time if I find something to add.

## Disclaimer

As usual, I'm writing this package for both practicing and bots' needs. Performance is **NOT** guaranteed.

That being said, all regular expressions are declared beforehand rather than being declared inside a function. That should be able to avoid the performance cost of building regular expressions every time the method is called.

## Contributing

1. Fork it ([https://github.com/deadshot465/owoify_cr/fork](https://github.com/deadshot465/owoify_cr/fork))
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Tetsuki Syu](https://github.com/deadshot465) - creator and maintainer

## See also

- [owoify-js](https://github.com/mohan-cao/owoify-js) - The original owoify-js repository.
- [Owoify.Net](https://www.nuget.org/packages/Owoify.Net/1.2.0) - The C# port of Owoify written by me.
- [Owoify++](https://github.com/deadshot465/OwoifyCpp) - The C++ header-only port of Owoify written by me.
- [owoify_rs](https://crates.io/crates/owoify_rs) - The Rust port of Owoify written by me.
- [owoify-py](https://pypi.org/project/owoify-py/) - The Python port of Owoify written by me.
- [owoify_dart](https://pub.dev/packages/owoify_dart) - The Dart port of Owoify written by me.
- [owoify_rb](https://rubygems.org/gems/owoify_rb) - The Ruby port of Owoify written by me.
- [owoify-go](https://pkg.go.dev/github.com/deadshot465/owoify-go/v2) - The Go port of Owoify written by me.
- [owoifySwift](https://github.com/deadshot465/OwoifySwift) - The Swift port of Owoify written by me.
- [owoifyKt](https://search.maven.org/search?q=g:%22io.github.deadshot465%22%20AND%20a:%22owoifyKt%22) - The Kotlin port of Owoify written by me.
- [owoify_ex](https://hex.pm/packages/owoify_ex) - The Elixir port of Owoify written by me.
- [owoify_cr](https://crystalshards.org/shards/github/deadshot465/owoify_cr) - The Crystal port of Owoify written by me.
- [owoifynim](https://nimble.directory/pkg/owoifynim) - The Nim port of Owoify written by me.
- [owoify-clj](https://clojars.org/net.clojars.deadshot465/owoify-clj) - The Clojure port of Owoify written by me.
- [purescript-owoify](https://pursuit.purescript.org/packages/purescript-owoify) - The PureScript port of Owoify written by me.
- [owoify-hs](https://hackage.haskell.org/package/owoify-hs) - The Haskell port of Owoify written by me.
- [owoify_erl](https://hex.pm/packages/owoify_erl) - The Erlang port of Owoify written by me.