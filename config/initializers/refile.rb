# config/initializers/refile.rb
require 'refile/s3'

aws = {
    access_key_id: "",
    secret_access_key: "",
    region: 'ap-northeast-1',
    bucket: 'testsuvook',
}
Refile.cache = Refile::S3.new(prefix: 'cache', **aws)
Refile.store = Refile::S3.new(prefix: 'store', **aws)