rm -rf output
mkdir output 

newS3Bucket="https:\/\/s3.amazonaws.com\/trend-micro-quick-start\/v2"

find ./DeepSecurity -type f -not -name '*.cfproj' -exec cp \{\} ./output/ \;
find ./output -type f -not -name '*.cfproj' -exec sed -i -E "s/(https:\/\/cf-deepsecurity.{0,})(\/[^\/]+$)/$newS3Bucket\2/" \{\} \;



