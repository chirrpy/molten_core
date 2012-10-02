###
# By default, the column used for Single Table Inheritance is protected from
# mass-assignment.  For the majority of cases (at least in this application) we
# actually want the column to be able to be mass-assigned.  Including this
# module into the class will make that possible.
#
module UnprotectedInheritance
  def attributes_protected_by_default
    super.tap do |protected_columns|
      protected_columns.delete inheritance_column
    end
  end
end
