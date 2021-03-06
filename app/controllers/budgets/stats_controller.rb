module Budgets
  class StatsController < ApplicationController

    before_action :load_budget
    load_and_authorize_resource :budget

    def show
      authorize! :read_stats, @budget
      @stats = Budget::Stats.new(@budget)
      @headings = @budget.headings.sort_by_name
    end

    private

      def load_budget
        @budget = Budget.find_by(slug: params[:budget_id]) || Budget.find_by(id: params[:budget_id])
      end

  end
end
