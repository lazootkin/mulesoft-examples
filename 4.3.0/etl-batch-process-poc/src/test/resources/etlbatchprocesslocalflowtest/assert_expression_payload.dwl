%dw 2.0
import * from dw::test::Asserts
---
payload must [
  haveKey('sourceFileName'),
  haveKey('destinationFileName'),
  $['batchJobResultObject'] must [
    beObject(),
    $['status'] must equalTo("EXECUTING")
  ]
]