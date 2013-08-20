require File.join(File.dirname(__FILE__), 'config/environment')
require 'member'

Member.delete_all;

Member.create( :first_name => "alice", :user_name => "test1", :password => "SU2orange!", :emloyment_status => "Student")
Member.create( :first_name => "bob", :user_name => "test2", :password => "SU2orange!", :emloyment_status => "Student")
Member.create( :first_name => "cathy", :user_name => "test3", :password => "SU2orange!", :emloyment_status => "Student")
Member.create( :first_name => "david", :user_name => "test4", :password => "SU2orange!", :emloyment_status => "Student")
Member.create( :first_name => "ellen", :user_name => "test5", :password => "SU2orange!", :emloyment_status => "Student")
Member.create( :first_name => "freddy", :user_name => "test6", :password => "SU2orange!", :emloyment_status => "Student")
Member.create( :first_name => "itell", :user_name => "test7", :password => "SU2orange!", :emloyment_status => "Admin")