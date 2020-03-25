# Xcode + Codecov proof of concept

Demo of Swift/Obj-C/Obj-C++ coverage converted to Codecov proprietary .json format.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

* Xcode 11.x
* Node 12.x + npm 6.x

### Installing

Install npm dependencies:

```
$ npm install
```

## Build, run tests, and generate coverage

From project root:

```
$ npm test # if this fails, select a device id and update scripts.test of package.json
# make note of result file after "Test session results, code coverage, and logs:"
$ node generate-codecov-json.js --archive-path ./Build/Logs/Test/RESULT_FILE.xcresult
```

### Upload coverage to Codecov

From project root:

```
$ bash <(curl -s https://codecov.io/bash) -t token -f ./coverage-report.json
```
