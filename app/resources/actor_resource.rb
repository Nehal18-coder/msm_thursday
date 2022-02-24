class ActorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :dob, :integer
  attribute :bio, :string

  # Direct associations

  has_many   :roles

  # Indirect associations

end
