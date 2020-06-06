package Log::ger::UseYAMLForDump;

# AUTHORITY
# DATE
# DIST
# VERSION

use strict 'subs', 'vars';
use warnings;
use Log::ger ();

use YAML::PP;

my @known_configs = qw();

my %default_configs = (
);

sub import {
    my ($pkg, %args) = @_;
    my %configs = %default_configs;
    for my $k (sort keys %args) {
        die unless grep { $k eq $_ } @known_configs;
        $configs{$k} = $args{$k};
    }

    $Log::ger::_dumper = \&YAML::PP::Dump;
}

1;
# ABSTRACT: Use YAML::PP to dump data structures (as JSON)

=head1 SYNOPSIS

 use Log::ger::UseYAMLForDump;


=head1 DESCRIPTION


=head1 CONFIGURATION


=head1 SEE ALSO

L<Log::ger>

L<YAML::PP>

Other modules to set data dumper for Log::ger:

=over

=item * L<Log::ger::UseDataBahe>

=item * L<Log::ger::UseDataDump>

=item * L<Log::ger::UseDataDumpColor>

=item * L<Log::ger::UseDataDumpObjectAsString>

=item * L<Log::ger::UseDataDumpOptions>

=item * L<Log::ger::UseDataDumper>

=item * L<Log::ger::UseDataDumperCompact>

=item * L<Log::ger::UseDataPrinter>

=item * L<Log::ger::UseJSONForDump>

=back

=cut
