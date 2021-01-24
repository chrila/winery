require 'rails_helper'

RSpec.describe GrapesController, type: :controller do
  
  login_user

  describe 'GET index' do
    it 'returns a successful response' do
      get :index
      expect(response).to be_successful
    end

    it 'assigns @grapes' do
      grape = Grape.create(name: 'Carmenere')
      grapes = Grape.all
      get :index
      expect(assigns(:grapes)).to match_array(grapes)
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end

end
