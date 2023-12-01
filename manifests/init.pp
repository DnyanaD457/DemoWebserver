class webserver (
String $index_content = hiera('webserver::index_content', 'default_value'),
) {
  include webserver::install
  include webserver::config
}
