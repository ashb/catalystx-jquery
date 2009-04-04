use inc::Module::Install 0.81;

name 'CatalystX-jQuery';
all_from 'lib/CatalystX/jQuery.pm';

requires 'Catalyst::Runtime' => '5.7014';
requires 'Catalyst::Plugin::ConfigLoader';
requires 'Catalyst::Plugin::Static::Simple';
requires 'Catalyst::Action::RenderView';
requires 'Catalyst::View::TT';
requires 'Catalyst::View::JSON';
requires 'parent';
requires 'Config::General';
requires 'JSON';

install_script glob('script/*.pl');
auto_install;
WriteAll;
