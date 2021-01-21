module GrapesHelper

  def grapes_for_select
    Grape.ordered.collect { |g| [g.name, g.id] }
  end

end
