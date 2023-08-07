if [ "$#" -eq 0 ]; then
    echo "Please give 1 argument for post title"
    exit 1
fi

new_post=$1
docker run -it --rm \
    --name hugo-portfolio-new-post \
    --mount type=bind,source=$(cd ../portfolio && pwd),target=/src \
    --entrypoint /bin/bash \
    klakegg/hugo:0.107.0-ext-ubuntu \
    -c "hugo new post/${new_post}/index.md && cd content/post/${new_post} && mkdir images"
