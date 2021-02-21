class CoursePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def create?
    if !user.blank?
      user.admin?
    end
  end

  def show?
    true
  end

  def update?
    if !user.blank?
      user.admin?
    end
  end

  def destroy?
    if !user.blank?
      user.admin?
    end
  end
end
