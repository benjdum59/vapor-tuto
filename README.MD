# Tuto Vapor

## Introduction
The aim of this document/project is to introduce Vapor, a framework for Swift & Web project. The project is a simple hello-world and will evolve to introduce new concepts. Do not search a coherence or utility for this project.

## Pre-requisites
Vapor is a Swift-3-language based framework. So you need to have:
- Mac OS (works on Sierra)
- XCode 8 (for Swift 3 stuff)
- Homebrew (for Vapor installation)
- Knowledge of website/web-programming concepts
- Knowledge of Swift (version 3 is better)

## Vapor installation
Install vapor with Homebrew:
```sh
brew install vapor/tap/toolbox
curl -sL toolbox.vapor.sh | bash
```
Ensure that installation is completed with:
```sh
vapor --help
```

### Known errors
#### Error when installing Vapor via Homebrew ####
Homebrew may be out of date. Use :
```sh
brew update
```

#### Installation getting stuck when using curl
First be patient. If the installation phase seems to be stuck, ensure it by using
```sh
top
```
If nothing seems to happen, try killing the installation with Ctrl-C and ensure the installation complete with
```sh
vapor --help
```

## XCode project creation
```sh
vapor new HelloWorld
cd HelloWorld
vapor xcode
```

## Run project inside XCode
1. Open *.xcodeproj file
2. Select App scheme
3. Click on Build button
4. You should see this sentence in terminal:
starting at 0.0.0.0:8080
5. Try with your favorite browser (http://localhost:8080)
