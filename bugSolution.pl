my %hash = (
    'a' => 1,
    'b' => 2,
    'c' => 3
);

my @keys = keys %hash; # Store keys in an array before iteration

foreach my $key (@keys) {
    print "Key: $key, Value: $hash{$key}\n";
    if ($key eq 'b') {
        delete $hash{$key};
    }
}

#Alternative solution using a while loop and each
my $it = each %hash; 
while ($it) {
    my ($key, $value) = $it; 
    print "Key: $key, Value: $value\n";
    $it = each %hash;
} 