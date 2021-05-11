#!/bin/bash

apt update
apt install -y curl

version="v1.7.4"
tmp="/tmp/bazelisk"
bazelisk="/usr/bin/bazelisk-linux-amd64-${version}"
if [ ! -f "${bazelisk}" ]; then
    rm -f /usr/bin/bazel*
    curl --silent "https://github.com/bazelbuild/bazelisk/releases/download/${version}/bazelisk-linux-amd64" -L --output ${tmp}
    if ! echo "ab258203db518a54cbd5afa80864d5a3bb366058b95e7a7df4134b0b7765a378 ${tmp}" | sha256sum --check --status ; then
        echo "sha256 did not match expected of ${tmp}. Not continuing to install"
        exit 1
    fi
    mv ${tmp} ${bazelisk}
    chmod +x ${bazelisk}
    ln -s ${bazelisk} /usr/bin/bazel
fi
