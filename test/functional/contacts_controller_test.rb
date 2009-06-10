require File.dirname(__FILE__) + '/../test_helper'

class ContactsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:contacts)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_contacts
    assert_difference('Contacts.count') do
      post :create, :contacts => { }
    end

    assert_redirected_to contacts_path(assigns(:contacts))
  end

  def test_should_show_contacts
    get :show, :id => contacts(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => contacts(:one).id
    assert_response :success
  end

  def test_should_update_contacts
    put :update, :id => contacts(:one).id, :contacts => { }
    assert_redirected_to contacts_path(assigns(:contacts))
  end

  def test_should_destroy_contacts
    assert_difference('Contacts.count', -1) do
      delete :destroy, :id => contacts(:one).id
    end

    assert_redirected_to contacts_path
  end
end
