### Features

-Builds the latest greatest nmap from source into a docker container - on the latest Ubuntu

### Build

```
docker build -t  nmap/upstream:latest . # Will be named nmap/upstream:latest
                                        #Feel free to chose any other name for it.
```
														

### Usage

```bash
docker run --rm nmap/upstream <arguments of nmap>
```
