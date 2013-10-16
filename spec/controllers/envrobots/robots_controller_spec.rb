require 'spec_helper'

describe Envrobots::RobotsController do
  describe '#index' do
    context 'production environment' do
      it 'renders robots.production.txt' do
        Rails.stub(env: ActiveSupport::StringInquirer.new('production'))
        expect(Rails.env.production?).to be_true
        robots = File.read('config/robots/robots.production.txt')
        get :index
        expect(response.body).to eq(robots)
      end
    end
    context 'other environments' do
      it 'renders robots.other.txt' do
        Rails.stub(env: ActiveSupport::StringInquirer.new('staging'))
        expect(Rails.env.production?).to be_false
        robots = File.read('config/robots/robots.other.txt')
        get :index
        expect(response.body).to eq(robots)
      end
    end
  end
end