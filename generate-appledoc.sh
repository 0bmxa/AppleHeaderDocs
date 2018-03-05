#!/bin/sh

OUTPUT_DIR='./docs'
PLATFORM='MacOSX'
SDK_VERSION='10.13'



# Remove old docs
rm -rf "${OUTPUT_DIR}"
mkdir -p "${OUTPUT_DIR}"

echo "# ${PLATFORM} ${SDK_VERSION} SDKs" >> "${OUTPUT_DIR}/index.md"

# for frameworkPath in ./Frameworks/*.framework; do
for frameworkPath in /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks/*.framework; do
    HEADERS_PATH="$frameworkPath"

    frameworkName=$(echo "$frameworkPath" | sed -E 's/.*\/(.+)\.framework/\1/')
    TITLE="${PLATFORM} ${SDK_VERSION} ${frameworkName} Framework"

    Generate docs from Apple headers
    appledoc \
        --create-html \
        --no-create-docset \
        -p "${TITLE}" \
        -c 'Apple Inc.' \
        -o "${OUTPUT_DIR}" \
        --keep-undocumented-objects \
        --keep-undocumented-member \
        "${HEADERS_PATH}"

    mv "${OUTPUT_DIR}/html" "${OUTPUT_DIR}/${frameworkName}"

    # echo "<a href=\"/${frameworkName}/\">${frameworkName} Framework Reference</a><br />" >> "${OUTPUT_DIR}/index.html"
    echo "* [${frameworkName} Framework Reference](/${frameworkName}/)" >> "${OUTPUT_DIR}/index.md"

done


#
# === More paths to consider ===
#
# /Applications/Xcode.app/Contents/Developer/Library/Frameworks/*.framework/Headers
# /Applications/Xcode.app/Contents/Developer/Library/MigrationFrameworks/*.framework/Headers
# /Applications/Xcode.app/Contents/Developer/Platforms/*.platform/Developer/Library/Frameworks/*.framework/Headers
# /Applications/Xcode.app/Contents/Developer/Platforms/*.platform/Developer/Library/GPUToolsPlatform/Frameworks/*.framework/Headers
# /Applications/Xcode.app/Contents/Developer/Platforms/*.platform/Developer/SDKs/*.sdk/System/Library/Frameworks/*.framework/Headers
# /Applications/Xcode.app/Contents/Developer/Platforms/*.platform/Developer/SDKs/*.sdk/System/Library/Frameworks/*.framework/Frameworks/*.framework/Headers
# /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/Developer/Platforms/*.platform/Developer/Library/Frameworks/*.framework/Headers
