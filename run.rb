require_relative "atm"
require_relative "user"
require "gosu"

John = User.new("John", 1771, 1250)
Sarah = User.new("Sarah", 0220, 9000)
Karl = User.new("Karl", 9999, 7)
John.login

