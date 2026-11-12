# load_balancer

One web server is a single point of failure, so I put two behind a load balancer. If one goes down, the other keeps answering.

- `0-custom_http_response_header` sets up nginx and adds an `X-Served-By` header, so I can see which server replied.
- `1-install_load_balancer` installs HAProxy on lb-01 and shares requests between web-01 and web-02, one after the other.

To see it work, run `curl -sI LB_IP | grep X-Served-By` a few times. The answer should switch between web-01 and web-02.
