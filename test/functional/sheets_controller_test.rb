require File.dirname(__FILE__) + '/../test_helper'

class SheetsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:sheets)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_sheet
    assert_difference('Sheet.count') do
      post :create, :sheet => { }
    end

    assert_redirected_to sheet_path(assigns(:sheet))
  end

  def test_should_show_sheet
    get :show, :id => sheets(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => sheets(:one).id
    assert_response :success
  end

  def test_should_update_sheet
    put :update, :id => sheets(:one).id, :sheet => { }
    assert_redirected_to sheet_path(assigns(:sheet))
  end

  def test_should_destroy_sheet
    assert_difference('Sheet.count', -1) do
      delete :destroy, :id => sheets(:one).id
    end

    assert_redirected_to sheets_path
  end
end
