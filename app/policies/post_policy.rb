class PostPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def create?
      user.admin?
    end

    def show?
      true
    end

    def update?
      # record.user == user
      user.admin?
    end

    def destroy?
      # record.user == user
      user.admin?
    end
  end
end
