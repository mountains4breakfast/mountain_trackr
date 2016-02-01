class Mountain < ActiveRecord::Base
    belongs_to :user
    has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/sample-1.jpg"
    validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
    validates_presence_of :name, :elevation

end
