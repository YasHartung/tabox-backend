class Session < ApplicationRecord

    belongs_to :project, optional: true

end