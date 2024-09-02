# Application Code

Taken from [here](https://github.com/abdsyed/kubernetes/blob/main/06-demo-application) following [this](https://www.youtube.com/watch?v=2T86xAtR6Fo) course. The setup consists of the following components:

1. A container running postgreSQL
2. A container running a go-lang API application which saves an entry to the DB whenever a request is made.
3. A container running a node API application which saves an entry to the DB whenever a request is made.
4. A container running a client application written in react.
5. A container running a python script which serves as a load generator sending traffic to the go-lang API.
