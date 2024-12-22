# 从输入中获取版本号
param(
    [string]$DERP_VERSION
)

echo "Building version $DERP_VERSION"

docker build --build-arg="DERP_VERSION=$DERP_VERSION" -t he0119/derper:$DERP_VERSION .
docker push he0119/derper:$DERP_VERSION
