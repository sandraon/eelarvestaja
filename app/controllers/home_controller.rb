class HomeController < ApplicationController
    before_action :authenticate_user!
    def index
        @incomes = Income.order(kuupaev: :desc).limit(6)
        @outcomes = Outcome.order(kuupaev: :desc).limit(6)
    end
end
