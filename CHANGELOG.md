# retipy changelog

## 0.0.2

- OpenCV updated to 4.0.0+
  - This is a breaking change in the python codebase, but it does not affect any of the exposed
    endpoints
- Updated Dockerfiles to fix multiple errors related with the buildsystem
- Updated retipy-rest to SpringBoot 2.1.4 which has better error handling
  - When an endpoint returns an exception, a json object will be returned that has more info on
    the error
- Bumped all retipy-rest dependencies to latest version
- Updated retipy-react to reflect changes in retipy-rest
  - UI should have better error messages
- retipy-python now has a new endpoint that process a retinal image with its vessel segmentation
  and returns a vessel classification (veins, arteries)
  
## 0.0.1

Initial release
