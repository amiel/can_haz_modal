config.to_prepare {
  ApplicationController.class_eval { include AutoNoLayout }
  Mime::Type.register_alias 'text/html', :partial
}