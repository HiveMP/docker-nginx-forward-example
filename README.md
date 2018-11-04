# forward-logs Docker example

This repository demonstrates how to use the `forward-logs` tool inside a Docker container. This tool is used by HiveMP Game Servers to forward logs into HiveMP.

## Usage

To run the example with a local WebSocket server (instead of HiveMP), run:

```
docker-compose up
```

Once the containers are launched, go to `http://localhost/` in your web browser. You should see the logs emit from both the `nginx-forward` container (the original container) and the `test-server` container (the container that is receiving logs over WebSockets).

In a real environment, HiveMP Game Servers will set the `FORWARD_LOGS_URL` environment variable in your game server instance container to point at HiveMP.

## License

```
MIT License

Copyright (c) 2018 Redpoint Games Pty Ltd

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
