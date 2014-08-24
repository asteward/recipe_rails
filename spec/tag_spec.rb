require 'rails_helper'

describe Tag do
  it { should have_and_belong_to_many(:recipes) }

  it 'should only create one tag per name' do
    tag1 = Tag.create(name: 'Spicy')
    tag2 = Tag.create(name: 'Spicy')
    expect(Tag.all).to eq [tag1]
  end
end
