#config.ru
require 'rack'

class MiPrimeraWebApp
  def call(env)
    [200, { 'Content-type' => 'text/html' }, ['<p> lorem ipsum</p>']]
  end
end

run MiPrimeraWebApp.new
