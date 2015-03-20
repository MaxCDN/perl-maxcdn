#!/usr/bin/perl -w

#MaxCDN API Sample Code - Perl
#Version 2.0

package MaxCDN;
use strict;

# Constructor
sub new {
        my $class = shift;
        my $self = {
                _myalias                => shift,
                _consumer_key           => shift,
                _consumer_secret        => shift,
        };
        # Print all the values just for clarification.
        #print "My Alias is $self->{_myalias}\n";
        #print "My Consumer Key is $self->{_consumer_key}\n";
        #print "My Consumer Secret is $self->{_consumer_secret}\n";
        bless $self, $class;
        return $self;
}

# Set the Alias
sub setAlias {
        my ( $self, $alias ) = @_;
        $self->{_myalias} = $alias if defined($alias);
        return $self->{_myalias};
}

# Set the Consumer Key
sub setKey {
        my ( $self, $alias ) = @_;
        $self->{_myalias} = $alias if defined($alias);
        return $self->{_consumer_key};
}

# Set the Consumer Secret
sub setSecret {
        my ( $self, $secret ) = @_;
        $self->{_myalias} = $secret if defined($secret);
        return $self->{_consumer_secret};
}

# Get the Alias
sub getAlias {
        my( $self ) = @_;
        return $self->{_myalias};
}

# Get the Consumer Key
sub getKey {
        my( $self ) = @_;
        return $self->{_consumer_key};
}

# Get the Consumer Secret
sub getSecret {
        my( $self ) = @_;
        return $self->{_consumer_secret};
}

1;
