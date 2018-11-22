class BookingPolicy < ApplicationPolicy
  attr_reader :user, :booking

  def initialize(user, booking)
    @user = user
    @booking = booking
  end

  def index?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
