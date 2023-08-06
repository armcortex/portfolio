docker run --rm -d \
    --mount type=bind,source=$(cd ../ && pwd),target=/src \
    klakegg/hugo:0.107.0-ext-ubuntu \
    new site portfolio
