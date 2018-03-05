# AppleHeaderDocs

This project tries to automatically generate docs for all Apple frameworks in
the current SDKs.

Browse the results at
[https://0bmxa.github.io/AppleHeaderDocs/](https://0bmxa.github.io/AppleHeaderDocs/).


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

The first approach uses [`appledoc`](https://github.com/tomaz/appledoc), but
fails to generate docs for a lot of frameworks.


### Known issues
* A lot of Frameworks are empty, appledoc fails to generate docs here
* Only generates docs for MacOS SDK frameworks for now
* …
