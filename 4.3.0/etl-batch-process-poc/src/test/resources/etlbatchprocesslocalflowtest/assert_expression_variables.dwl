%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('endpointFiles'),
  $['endpointFiles'] must [
    beObject(),
    $[*"isJson"] must haveSize(1),
    $[*"isJson"][0] must equalTo(true)
  ]
]