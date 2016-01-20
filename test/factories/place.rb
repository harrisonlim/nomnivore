FactoryGirl.define do
	factory :place do
		name "TB Plaza"
		address "200 Tiong Bahru Road"
		description "Superrr hot."
		latitude (42.3631519)
    	longitude (-71.056098)
    	association :user
	end
end