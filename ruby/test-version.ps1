$ErrorActionPreference = "Stop"
ruby --version | Tee-Object -Variable cmdOutput
ThrowOnNativeFailure

if (-Not ($cmdOutput -match "ruby ")) {
  throw "Test failed."
}
