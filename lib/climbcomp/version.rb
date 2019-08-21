
module Climbcomp
  VERSION_PATH = File.expand_path(File.join(__dir__, '..', '..', 'VERSION')).freeze
  VERSION = IO.readlines(VERSION_PATH).first.to_s.chomp.freeze
end
