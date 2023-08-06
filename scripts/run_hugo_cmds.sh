docker run -it --rm \
    --name hugo-portfolio-tranquilpeak-20230306 \
    --mount type=bind,source=$(cd ../portfolio && pwd),target=/src \
    -p 1313:1313 \
    --entrypoint /bin/bash \
    klakegg/hugo:0.107.0-ext-ubuntu
    