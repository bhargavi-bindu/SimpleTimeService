# SimpleTimeService

A minimal Flask-based web service that returns the current UTC timestamp and client IP.

## Run Locally

```bash
docker build -t simpletimeservice .
docker run -p 5000:5000 simpletimeservice


```
Pull from DockerHub:

```bash 
docker pull bhargavi-bindu/simpletimeservice:latest
```

Output:

```bash
{
  "timestamp": "2025-06-10T05:33:00Z",
  "ip": "x.x.x.x"
}
```
