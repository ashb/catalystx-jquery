# IMPORTANT: if you delete this file your app will not work as
# expected.  you have been warned
use inc::Module::Install;

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