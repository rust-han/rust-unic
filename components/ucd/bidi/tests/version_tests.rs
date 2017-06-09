// Copyright 2017 The UNIC Project Developers.
//
// See the COPYRIGHT file at the top-level directory of this distribution.
//
// Licensed under the Apache License, Version 2.0 <LICENSE-APACHE or
// http://www.apache.org/licenses/LICENSE-2.0> or the MIT license
// <LICENSE-MIT or http://opensource.org/licenses/MIT>, at your
// option. This file may not be copied, modified, or distributed
// except according to those terms.


extern crate unic_ucd_core;
extern crate unic_ucd_bidi;


#[test]
fn test_version_against_ucd_core() {
    assert_eq!(
        unic_ucd_bidi::UNICODE_VERSION,
        unic_ucd_core::UNICODE_VERSION
    );
}
