# AppleHeaderDocs

This project tries to automatically generate docs for all Apple frameworks in
the current SDKs.

Browse the results on [GitHub pages](https://0bmxa.github.io/AppleHeaderDocs/).


## Why

Sure, there is the amazing documentation at
[developer.apple.com/documentation/](https://developer.apple.com/documentation/).
But this one is actually missing documentation for quite a few (mostly less
popular) frameworks, like
[CoreAudio’s `AudioServerPlugin`](https://developer.apple.com/documentation/CoreAudio/)
API. The documentation for these is, however, available in the frameworks’
header files.

This project tries to make this "hidden" documentation more visible.


## How

The first approach uses [`appledoc`](https://github.com/tomaz/appledoc),
but fails to generate docs for a lot of frameworks.


## Legal stuff

All rights of this documentation still belongs to Apple. You might need to
accept Xcode’s Terms of Use (or such) to be allowed to browse these.

I do not own any rights on this documentation. If this project violates any
legal agreement or such, (please don't sue me! and) please let me know!


## Known issues
* A lot of Frameworks are empty, appledoc fails to generate docs here
* Only generates docs for MacOS SDK frameworks for now
* …
