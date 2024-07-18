# 从输入中获取版本号
param(
    [string]$VERSION
)

echo "Building version $VERSION"

docker build --build-arg="VERSION=$VERSION" -t he0119/derper:$VERSION .
docker push he0119/derper:$VERSION
