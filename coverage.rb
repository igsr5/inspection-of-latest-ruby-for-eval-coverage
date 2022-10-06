require "coverage"

Coverage.start(lines: true, eval: true)
# Coverage.start(lines: true)

load "simple-eval/main.rb"
# load "erb-eval-v1/main.rb"
# load "erb-eval-v2/main.rb"

p Coverage.result
