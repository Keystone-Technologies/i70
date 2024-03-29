package I70::Example;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub welcome {
  my $self = shift;

  # Render template "example/welcome.html.ep" with message
  $self->redirect_to('/index.html');
}

sub sync {
  my $self = shift;

  $_ = qx{/var/mojo/i70/script/i70 sync};
  $self->render(text=>"<pre>$_</pre>");
}

1;
