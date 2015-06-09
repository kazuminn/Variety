#!/usr/local/bin/perl


use strict;

use LWP::UserAgent;
use HTML::TreeBuilder;
use Data::Dumper;

my $url  = "http://www.ie.u-ryukyu.ac.jp";

#html取得
my $user_agent = "Mozilla/4.0 (compatible;MSIE 8.0; Windows NT 6.1; Trident/4.0)";
my $ua = LWP::UserAgent->new('agent' => $user_agent);;

my $res = $ua->get($url);

my $content = $res->content;

#htmlパース

my $tree = HTML::TreeBuilder->new;

$tree->parse($content);

#html表示

my $file =  $tree->look_down("id","rss");
print $file->as_HTML
