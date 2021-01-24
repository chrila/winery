require 'rails_helper'

RSpec.describe SommeliersController, type: :controller do

  login_user

  describe 'GET index' do
    it 'returns a successful response' do
      get :index
      expect(response).to be_successful
    end

    it 'assigns @sommeliers' do
      sommelier = Sommelier.create(name: 'Kurt Cobain', age: 27, nationality: 'USA')
      sommeliers = Sommelier.all
      get :index
      expect(assigns(:sommeliers)).to match_array(sommeliers)
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end

end
