package Koha::Plugin::HKS3::MungeFrameworksDefaultsDemo::Controller;

use Modern::Perl;

use base qw(Koha::Plugins::Base);


our $VERSION = "0.900";

our $metadata = {
    name            => 'MungeFrameworksDefaultsDemo',
    author          => 'Mark Hofstetterr, HKS3',
    date_authored   => '2023-11-08',
    date_updated    => '2023-11-08',
    minimum_version => '19.05.00.000',
    maximum_version => undef,
    version         => $VERSION,
    description     => 'MungeFrameworksDefaultsDemo'
};

sub new {
    my ( $class, $args ) = @_;

    $args->{'metadata'} = $metadata;
    $args->{'metadata'}->{'class'} = $class;

    my $self = $class->SUPER::new($args);
    return $self;
}


sub framework_defaults_override {
    my ( $self, $tag, $subfield, $value, $form_mode ) = @_;
    # $framework_override->{override_default_value}
    # $framework_override->{apply_override}
    my $r = {override_default_value => undef, apply_override => undef};
    if ($tag eq '245' && $subfield eq 'a') {
        $r->{apply_override} = 1;
        $r->{override_default_value} =  $value .' added';
    }
    return $r;
}

1;
