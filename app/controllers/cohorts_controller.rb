class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all.includes(users: {submissions: :comments})
    render template: "cohorts/index"
  end
end
