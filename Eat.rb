#!/usr/bin/ruby

puts '==================================='

command = 'abc ddd'

system command

if $? == 0 then
	puts '执行成功'
else
	puts '失败了！！！'
end

puts '==================================='