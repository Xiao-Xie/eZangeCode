require File.join(File.dirname(__FILE__), 'config/environment')
require 'judgement'

Judgement.delete_all;

Judgement.create( :judgement => "stone1")
Judgement.create( :judgement => "stone2")
Judgement.create( :judgement => "stone3")
Judgement.create( :judgement => "stone4")
Judgement.create( :judgement => "stone5")
Judgement.create( :judgement => "stone6")
Judgement.create( :judgement => "stone6")