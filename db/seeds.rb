# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Member.delete_all;

Member.create( :first_name => "alice", :user_name => "test1", :password => "SU2orange!", :emloyment_status => "Student")
Member.create( :first_name => "bob", :user_name => "test2", :password => "SU2orange!", :emloyment_status => "Student")
Member.create( :first_name => "cathy", :user_name => "test3", :password => "SU2orange!", :emloyment_status => "Student")
Member.create( :first_name => "david", :user_name => "test4", :password => "SU2orange!", :emloyment_status => "Student")
Member.create( :first_name => "ellen", :user_name => "test5", :password => "SU2orange!", :emloyment_status => "Student")
Member.create( :first_name => "freddy", :user_name => "test6", :password => "SU2orange!", :emloyment_status => "Student")
Member.create( :first_name => "itell", :user_name => "test7", :password => "SU2orange!", :emloyment_status => "Admin")

Sin.delete_all

Sin.create( :member_id => Member.find_by_first_name("alice").id,
           :title => "Test1",
              :address => "820 East Genesee Street, Syracuse, NY 13210",
              :sin => "Testing", :weight => 3)

Sin.create( :member_id => Member.find_by_first_name("bob").id,
           :title => "Test2",
              :address => "524 Westcott Stre, Syracuse, NY 13210",
              :sin => "Testing", :weight => 5)

Sin.create( :member_id => Member.find_by_first_name("cathy").id, :title => "Test3",
              :address => "185 Walton Street, Syracuse, NY 13202",
              :sin => "Testing", :weight => 6)

Sin.create( :member_id => Member.find_by_first_name("david").id, :title => "Test4",
              :address => "401 Harrison Street, Syracuse, NY 13202",
              :sin => "Testing", :weight => 7)