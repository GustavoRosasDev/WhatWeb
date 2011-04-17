##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "MyBB" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-02-26
version "0.1"
description "MyBB is a powerful, efficient and free forum package developed in PHP and MySQL. MyBB has been designed with the end users in mind, you and your subscribers. Full control over your discussion system is presented right at the tip of your fingers, from multiple styles and themes to the ultimate customization of your forums using the template system. - Homepage: http://mybb.com/"

# Google results as at 2011-02-26 #
# 289 for "Powered By MyBB"

# Dorks #
dorks [
'"Powered By MyBB"'
]

# Examples #
examples %w|
hlurb.gov.ph/forum/
www.ldrt.gov.za/ldrtforum/
forum.citizen.apps.gov/DraftYVPForum/
sanpablo.gov.ph/forum/
mods.mybb.com/theme-demo/
mydemo.opensourcecms.com/mybb4749/
www.mybbcodes.com
mybbthemes.8ez.com
forum.online-urbanus.be
forum.mybbz.net
electrojams.com/forum/
dotautilities-forums.net
democratsforprogress.com/forum/
forum.suprbay.org
goxema.com
stylemybb.com
mybbtemplates.createmybb.com
mhhauto.com
forums.mybbcommunity.com
endlessparadigm.com/forum/
prxbx.com/forums/
www.audentio.com/forums/
www.wbdev.co.cc
www.mybbextras.com
www.mybbcentral.com
www.rusnakweb.com/forum/
www.hackforums.net
www.networkedmediatank.com
www.forum.tech2game.com
www.vgzero.com
www.pavementsucks.com
www.mybbgm.com
www.zoomcities.com/forum/
www.nameslot.com
www.pokeboard.com
www.cydevice.net
www.spriters-resource.com/community/
www.charice.tv
|

# Matches #
matches [

# HTML Comments
{ :text=>'				<!-- MyBB is free software developed and maintained by a volunteer community. ' },
{ :text=>'				<!-- You may NOT remove, modify or hinder the visibility of the MyBB copyright at any time.' },
{ :text=>'<!-- The following piece of code allows MyBB to run scheduled tasks. DO NOT REMOVE --><img' },

# Powered by text
{ :regexp=>/Powered By <a href="http:\/\/(mybb.com\/|www.mybboard.net)" target="_blank">MyBB<\/a>, &copy; 2002-20[\d]{2} <a href="http:\/\/(mybb.com\/|www.mybboard.net)" target="_blank">MyBB Group<\/a>./ },

# Simple powered by text
{ :text=>'Powered By <a href="http://www.mybboard.com" target="_blank">MyBB</a>' },

]

end


