retipy
======

retipy is a web application that is composed of three code bases, a
[Typescript](https://github.com/alevalv/retipy-react) web application which queries a
[Kotlin](https://github.com/alevalv/retipy-rest) based REST application which keeps all the
data on images, user, medical evaluations which also queries a
[Python](https://github.com/alevalv/retipy-python) based webservice that can process fundus
retinal images.

This project contains all sources as a metarepository while allowing the quickstart of a retipy
application using Docker.

Having docker and docker-compose installed in your machine, the command that you should run 
in the root folder of this repository to start a local retipy application is:

```sh
docker-compose up --build
```

This application has an existing user with credentials `alevalv` and password `mypassword`.

The default docker application is missing persistence. When restarted all data processed and stored
in the rest server will be lost.

License
-------

retipy is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.
