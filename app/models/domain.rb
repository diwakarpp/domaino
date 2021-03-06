class Domain < ApplicationRecord
  belongs_to :portal
  has_many :checks, dependent: :destroy

  scope :active, -> { where('portal_id <> ?', Portal.gc_portal.id) }

  def self.new_with_default_checks(attributes)
    new(attributes).tap do |domain|
      Check.kinds.each do |kind, _|
        domain.checks.build kind: kind
      end
    end
  end
end
