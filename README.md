# Apple Header Docs

This project tries to automatically generate documentation for all Apple
frameworks, based on the current SDKs.

Browse the results on [GitHub pages](https://0bmxa.github.io/AppleHeaderDocs/).


### Why?

Sure, there is the amazing
[Apple Developer Documentation](https://developer.apple.com/documentation/). But
it’s is actually missing documentation for quite a few (mostly less popular)
frameworks, like
[CoreAudio’s `AudioServerPlugin`](https://developer.apple.com/documentation/CoreAudio/)
API. The documentation for these is, however, available in most of the
frameworks’ header files.

This project tries to make this "hidden" documentation more visible and easier
to access.


## How it works

This first approach iterates over all `.framework` folders in
`/path/to/MacOSX.sdk/System/Library/Frameworks/` and calls
[`appledoc`](https://github.com/tomaz/appledoc) with the HTML option on each of
them. The resulting files and an index file are then pushed to the `gh-pages`
branch of this repo and through this visible on
[GitHub pages](https://0bmxa.github.io/AppleHeaderDocs/).

#### Caveats

Sadly `appledoc` fails to generate docs for a lot of frameworks. Maybe it can be
replaced by [`doxygen`](http://doxygen.org),
[`jazzy`](https://github.com/realm/jazzy) or something else.

Feel free to contribute by suggesting fixes or enhancements via issues or PRs!


## Legal stuff

All rights of this documentation still belongs to Apple. You might need to
accept Xcode’s Terms of Use (or such) to be allowed to browse these.

I do not own any rights on this documentation. If this project violates any
legal agreement or such, (please don't sue me! and) please let me know!


## Known issues
* A lot of Frameworks are empty, because appledoc fails to generate docs
* Only docs for MacOS SDK frameworks are generated
* Docs from frameworks inside frameworks are merged with the parent framework
  (or not generated at all?)
* Each framework documentation has it's own (appledoc theme) JS/CSS files. Those could be consolidated somehow
* …
