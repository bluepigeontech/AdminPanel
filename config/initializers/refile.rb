require "refile/s3"

aws = {
  access_key_id: "AKIAIIZ5OZ6SIQSRMQCQ",
  secret_access_key: "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",
  region: "us-west-2",
  bucket: "bluepigeon",
}
Refile.cache = Refile::S3.new(max_size: 10.megabytes, prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)