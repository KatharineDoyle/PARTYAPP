class SpacePolicy < ApplicationPolicy
  def show?
    true
  end

  def update?
    space.user == user
  end

  def destroy
    space.user == user
  end

  def space
    # record is an instance of Space
    record
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
