class GroceryListUsersController < ApplicationController
  before_action :set_grocery_list_user, only: [:show, :edit, :update, :destroy]

  # GET /grocery_list_users
  # GET /grocery_list_users.json
  def index
    @grocery_list_users = GroceryListUser.all
  end

  # GET /grocery_list_users/1
  # GET /grocery_list_users/1.json
  def show
  end

  # GET /grocery_list_users/new
  def new
    @grocery_list_user = GroceryListUser.new
  end

  # GET /grocery_list_users/1/edit
  def edit
  end

  # POST /grocery_list_users
  # POST /grocery_list_users.json
  def create
    @grocery_list_user = GroceryListUser.new(grocery_list_user_params)

    respond_to do |format|
      if @grocery_list_user.save
        format.html { redirect_to @grocery_list_user, notice: 'Grocery list user was successfully created.' }
        format.json { render :show, status: :created, location: @grocery_list_user }
      else
        format.html { render :new }
        format.json { render json: @grocery_list_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grocery_list_users/1
  # PATCH/PUT /grocery_list_users/1.json
  def update
    respond_to do |format|
      if @grocery_list_user.update(grocery_list_user_params)
        format.html { redirect_to @grocery_list_user, notice: 'Grocery list user was successfully updated.' }
        format.json { render :show, status: :ok, location: @grocery_list_user }
      else
        format.html { render :edit }
        format.json { render json: @grocery_list_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grocery_list_users/1
  # DELETE /grocery_list_users/1.json
  def destroy
    @grocery_list_user.destroy
    respond_to do |format|
      format.html { redirect_to grocery_list_users_url, notice: 'Grocery list user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grocery_list_user
      @grocery_list_user = GroceryListUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grocery_list_user_params
      params.require(:grocery_list_user).permit(:user_id, :grocery_list_id)
    end
end
