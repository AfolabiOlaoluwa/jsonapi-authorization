class ArticlePolicy
  class Scope < Struct.new(:user, :scope)
    def resolve
      # raise NotImplementedError
      scope.all
    end
  end

  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    true
  end

  def destroy?
    true
  end
end
