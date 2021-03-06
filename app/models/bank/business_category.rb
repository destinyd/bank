module Bank
  class BusinessCategory
    include Mongoid::Document
    include Mongoid::Timestamps
    include Mongoid::Tree
    before_destroy :destroy_children

    field :name,   type: String
    field :number, type: String

    validates :name, presence: true

    default_scope ->{order(:id.asc)}

    # has_many :operation_flow_wares, class_name: "Bank::OperationFlowWare"
  end
end
