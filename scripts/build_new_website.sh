docker run --rm -d \
    --mount type=bind,source=$(cd ../ && pwd),target=/src \
    klakegg/hugo:0.104.3-ext-ubuntu \
    new site portfolio
