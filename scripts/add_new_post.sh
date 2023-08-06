new_post="my-post2"
docker run -it --rm \
    --name hugo-portfolio-new-post \
    --mount type=bind,source=$(cd ../portfolio && pwd),target=/src \
    --entrypoint /bin/bash \
    klakegg/hugo:0.107.0-ext-ubuntu \
    -c "hugo new post/${new_post}/${new_post}.md && cd content/post/${new_post} && mkdir images"
