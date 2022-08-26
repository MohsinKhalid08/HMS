# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the user here. For example:
    #
 
   if user.usertype == "admin"
    can :update, User
    can :destroy, User 
    can :create, User
    can :read, User
  elsif user.usertype == "HR"
    can :update, User
    can :destroy, User 
    can :create, User
    can :read, User
    
  else
    can :read, User 
  end  



    # return unless user.usertype = "employee"
    # can :read, :all
    # return unless user.usertype = "admin" 
    # can :manage, :all
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, published: true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
  end
end
