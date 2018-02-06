#!/usr/bin/env bash

# Copyright 2017 The UNIC Project Developers.
#
# See the COPYRIGHT file at the top-level directory of this distribution.
#
# Licensed under the Apache License, Version 2.0 <LICENSE-APACHE or
# http://www.apache.org/licenses/LICENSE-2.0> or the MIT license
# <LICENSE-MIT or http://opensource.org/licenses/MIT>, at your
# option. This file may not be copied, modified, or distributed
# except according to those terms.

# Since `cargo publish --all` does not exist yet, we use this dumb alternative
# solution for now.
#
# Main downside of this approch is that there are separate `target/`
# directories used for each component, increasing the test and publish process
# time.

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. "$DIR/common.sh"


# Steps

# Package all components
for component in $COMPONENTS; do
    pkg_file="$component/src/pkg_info.rs"
    if [ ! -f "$pkg_file" ]
    then
        echo "Missing pkg_file: $component"
    fi
done
