require 'rails_helper'

RSpec.describe WinesController, type: :controller do

  login_user

  describe 'GET index' do
    it 'returns a successful response' do
      get :index
      expect(response).to be_successful
    end

    it 'assigns @wines' do
      wine = Wine.create(name: 'Mountain Blend')
      wines = Wine.all
      get :index
      expect(assigns(:wines)).to match_array(wines)
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end

    it 'renderes the show template' do
      wine = Wine.create(name: 'Mountain Blend')
      get :show, params: { id: wine.id }
      expect(response).to render_template('show')
    end
  end

end
