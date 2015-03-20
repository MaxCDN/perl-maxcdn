#!/usr/bin/perl -w

#MaxCDN API Sample Code - Perl
#Version 2.0

package MaxCDNRWS;
use MaxCDN;
use strict;
use warnings;
use JSON;
use Net::OAuth;
use LWP::UserAgent;
use URI;
use Data::Dumper;
$Net::OAuth::PROTOCOL_VERSION = Net::OAuth::PROTOCOL_VERSION_1_0A;
our @ISA = qw(MaxCDN);
my $base_url = "https://rws.maxcdn.com/";
my $debug;

sub new {
        my ($class) = @_;
        # Call the constructor of the parent class, MaxCDN.
        my $self = $class->SUPER::new( $_[1], $_[2], $_[3] );
        # Add few more attributes
        bless $self, $class;
        return $self;
}

#PUT
sub put {
        my( $self, $address, @params, $debug ) = @_;
        $address = $base_url . $self->{_myalias} . $address;

		my $param = "";
		if(@params){
		foreach (@params){
			$param .= $_ . "&";
			}
		}

        if($debug){
                print "Making a PUT request to " . $address . "\n";
        }
        my $url = shift;
        my $ua = LWP::UserAgent->new;
        
        #CREATE REQUEST
        my $request = Net::OAuth->request("request token")->new(
                consumer_key => $self->{_consumer_key},  
                consumer_secret => $self->{_consumer_secret}, 
                request_url => $address, 
                request_method => 'PUT',
                signature_method => 'HMAC-SHA1',
                timestamp => time,
	        nonce => '', 
                callback => '',
        );

        #SIGN        
        $request->sign;

        #SEND PUT REQUEST
		my $params = substr($param, 0, -1);
		$param = "";
		my $req = HTTP::Request->new("PUT", $request->to_url);
		$req->content($params);
		my $res = $ua->request($req);
        #DECODE JSON
        my $decoded_json = decode_json($res->content);
        if($decoded_json->{code} == 200) {
		if($debug){
                        print Dumper $decoded_json->{data};
		}
		return $decoded_json->{data};
	} else {
	        if($debug){
		        print Dumper $decoded_json->{error};
		}
		return $decoded_json->{error};
	}
}

#POST
sub post {
        my( $self, $address, @params, $debug ) = @_;
        $address = $base_url . $self->{_myalias} . $address;

        if($debug){
                print "Making a POST request to " . $address . "\n";
        }

        my $url = shift;
        my $ua = LWP::UserAgent->new;
        
        #CREATE REQUEST
        my $request = Net::OAuth->request("request token")->new(
                consumer_key => $self->{_consumer_key},  
                consumer_secret => $self->{_consumer_secret}, 
                request_url => $address, 
                request_method => 'POST',
                signature_method => 'HMAC-SHA1',
                timestamp => time,
	        nonce => '', 
                callback => '',
		extra_params => @params,
        );

        #SIGN        
        $request->sign;

        #SEND REQUEST
	my $res = $ua->post($request->to_url, Content => @params);        
        #DECODE JSON
        my $decoded_json = decode_json($res->content);
        if($decoded_json->{code} == 200) {
		if($debug){
                        print Dumper $decoded_json->{data};
		}
		return $decoded_json->{data};
	} else {
	        if($debug){
		        print Dumper $decoded_json->{error};
		}
		return $decoded_json->{error};
	}
}

#GET
sub get {
        my( $self, $address, $debug ) = @_;
        $address = $base_url . $self->{_myalias} . $address;

        if($debug){
                print "Making a GET request to " . $address . "\n";
        }

        my $url = shift;
        my $ua = LWP::UserAgent->new;
        
        #CREATE GET REQUEST
        my $request = Net::OAuth->request("request token")->new(
                consumer_key => $self->{_consumer_key},  
                consumer_secret => $self->{_consumer_secret}, 
                request_url => $address, 
                request_method => 'GET', 
                signature_method => 'HMAC-SHA1',
                timestamp => time,
	        nonce => '', 
                callback => '',
        );

        #SIGN        
        $request->sign;

        #SEND GET REQUEST
        my $res = $ua->get($request->to_url); 
        
        #DECODE JSON
        my $decoded_json = decode_json($res->content);
        if($decoded_json->{code} == 200) {
		if($debug){
                        print Dumper $decoded_json->{data};
		}
		return $decoded_json->{data};
	} else {
	        if($debug){
		        print Dumper $decoded_json->{error};
		}
		return $decoded_json->{error};
	}
}

#DELETE
sub delete {
        my( $self, $address, @params, $debug ) = @_;
	if(@params){
	my $url = "";
	my $i = 0;
	foreach my $file (@params){
	$url .= "file[" . $i . "]=" . $file . "&";
	$i = $i + 1;
	}
	$address .= "?" . $url;
	}
        $address = $base_url . $self->{_myalias} . $address;

        if($debug){
                print "Making a DELETE request to " . $address . "\n";
        }

        my $url = shift;
        my $ua = LWP::UserAgent->new;
        
        #CREATE DELETE REQUEST
        my $request = Net::OAuth->request("request token")->new(
                consumer_key => $self->{_consumer_key},  
                consumer_secret => $self->{_consumer_secret}, 
                request_url => $address, 
                request_method => 'DELETE',
                signature_method => 'HMAC-SHA1',
                timestamp => time,
	        nonce => '', 
                callback => '',
        );

        #SIGN        
        $request->sign;

        #SEND DELETE REQUEST
        my $res = $ua->delete($request->to_url); 
        
        #DECODE JSON
        my $decoded_json = decode_json($res->content);
        if($decoded_json->{code} == 200) {
		if($debug){
                        print Dumper $decoded_json->{data};
		}
		return $decoded_json->{data};
	} else {
	        if($debug){
		        print Dumper $decoded_json->{error};
		}
		return $decoded_json->{error};
	}
}
1;
