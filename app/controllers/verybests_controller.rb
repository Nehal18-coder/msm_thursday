class VerybestsController < ApplicationController
  before_action :set_verybest, only: %i[show edit update destroy]

  def index
    @q = Verybest.ransack(params[:q])
    @verybests = @q.result(distinct: true).page(params[:page]).per(10)
  end

  def show; end

  def new
    @verybest = Verybest.new
  end

  def edit; end

  def create
    @verybest = Verybest.new(verybest_params)

    if @verybest.save
      redirect_to @verybest, notice: "Verybest was successfully created."
    else
      render :new
    end
  end

  def update
    if @verybest.update(verybest_params)
      redirect_to @verybest, notice: "Verybest was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @verybest.destroy
    redirect_to verybests_url, notice: "Verybest was successfully destroyed."
  end

  private

  def set_verybest
    @verybest = Verybest.find(params[:id])
  end

  def verybest_params
    params.fetch(:verybest, {})
  end
end
