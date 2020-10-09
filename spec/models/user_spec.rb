require 'rails_helper'
  
describe User do
  it { should validate_presence_of :email }
  describe 'Validations' do
    # it 'Users must have an email' do
    #   newser = User.new(forename: 'Fred')
    #   expect(newser).not_to be_valid
    # end
  end
end
