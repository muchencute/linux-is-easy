#!/usr/bin/perl -w

use strict;
use warnings;

use Email::Simple;
use Email::Sender::Simple qw(sendmail);
use Email::Sender::Transport::SMTP::TLS;

my $transport = Email::Sender::Transport::SMTP::TLS->new({
	host => 'smtp.exmail.qq.com',
	port => 465,
	username => 'pm@muchencute.com',
	password => 'at0769ATP',
	ssl => 1
});

my $message = Email::Simple->create({
	header => [
		To => 'nothingmi@muchencute.com',
		From => 'pm@muchencute.com',
		Subject => 'Hello'
	],
	body => 'Test\n'
});

sendmail($message, {
	transport => $transport
});
