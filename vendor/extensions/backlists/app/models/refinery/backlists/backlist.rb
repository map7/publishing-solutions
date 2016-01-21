module Refinery
  module Backlists
    class Backlist < Refinery::Core::BaseModel
      self.table_name = 'refinery_backlists'


      validates :title, :presence => true, :uniqueness => true

      belongs_to :picture, :class_name => '::Refinery::Image'

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end
