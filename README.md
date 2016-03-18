# up-elk-example

To install everything you need a docker and docker-compose on your instance. Then please run:

```
git clone https://github.com/tkaczu/up-elk-example
cd up-elk-example
docker-compose build
docker-compose up
```

Then You should (if your docker run at 192.168.99.100 for example) see:
- symfony demo app at `192.168.99.100:3000`
- elk stack at `192.168.99.100:8010`

The presentation You could see here: http://www.slideshare.net/BartoszTkaczewski/elk-stack-dla-przezornego-i-zawsze-ubezpieczonego-developera
