require 'rubygems'
require 'aws-sdk'

s3 = AWS::S3.new

bucket_name = 'displayadtech'
obj_name = 'test.txt'

document = s3.buckets[bucket_name].objects[obj_name]

File.open(obj_name, "w") do |f|
  f.write(document.read)
end

puts "'#{obj_name}' copied from S3."