require File.join(File.dirname(__FILE__), 'config/environment')
require 'sin'

Sin.delete_all

Sin.create( :title => "Test1",
              :address => "820 East Genesee Street, Syracuse, NY 13210",
              :sin => "Testing", :weight => 3)

Sin.create( :title => "Test2",
              :address => "524 Westcott Stre, Syracuse, NY 13210",
              :sin => "Testing", :weight => 5)

Sin.create( :title => "Test3",
              :address => "185 Walton Street, Syracuse, NY 13202",
              :sin => "Testing", :weight => 6)

Sin.create( :title => "Test4",
              :address => "401 Harrison Street, Syracuse, NY 13202",
              :sin => "Testing", :weight => 7)