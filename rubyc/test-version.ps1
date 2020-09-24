$ErrorActionPreference = "Stop"
rubyc --version | Tee-Object -Variable cmdOutput
ThrowOnNativeFailure

if (-Not ($cmdOutput.length -gt 3)) {
  throw "Test failed."
}
