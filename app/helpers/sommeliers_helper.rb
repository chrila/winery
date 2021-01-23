module SommeliersHelper

  def sommeliers_for_select
    Sommelier.ordered.collect { |s| [s.name, s.id] }
  end

end
