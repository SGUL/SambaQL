use Config::Tiny;

my $Config = Config::Tiny->new();
$Config = Config::Tiny->read( '/etc/samba/sgulfs-shares1.smb.conf' );


foreach my $Section (keys %{$Config}) {

        #my $Hostname_property = $Config->{$Section}->{Hostname};
        #my $Port_property = $Config->{$Section}->{Port};

	print $Section;
	print "\n";

	foreach my $parameter (keys %{$Config->{$Section}}) {
        	print "\t$parameter = $Config->{$Section}->{$parameter}\n";
    	}

}

#my $one = $Config->{estates}->{comment};
#print $one;
