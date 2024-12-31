docker build \
--build-arg LGSG_APP_DATA_URL=$LGSG_APP_DATA_URL \
--file build.Dockerfile \
-t $BUILD_IMAGE_TAG \
.