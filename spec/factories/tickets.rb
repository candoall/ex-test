FactoryBot.define do
  factory :ticket do
    request_number "MyString"
    sequence_number 1
    request_type "MyString"
    response_due_date_time "2018-08-29 21:55:13"
    primary_service_area_code "MyString"
    additional_service_area_codes "MyString"
    digsite_info "MyText"
  end
end
