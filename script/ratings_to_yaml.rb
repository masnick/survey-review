structure = {
  'survey_building' => [
    'question_types',
    'validation',
    'ease_of_use',
    'survey_logic'
    ],
  'email_distribution' => [
    'importing_respondent_information',
    'distribution_via_email',
    'followup_via_email',
    'tracking',
    ],
  'responding' => [
    'themes',
    'domain_name',
    'white_label',
    'survey_completion_page',
    'mobile_support',
    ],
  'analysis_and_exporting' => [
    'viewing_data_online',
    'exporting',
    ],
  'general' => [
    'documentation',
    'support',
    'API',
    'SSL',
  ]
}

puts "Enter tab-delimited scores"
values = gets.gsub(/\s+/,' ').split(" ")

output = ""
structure.each do |k,v|
  output << "  #{k}:\n"
  v.each do |label|
    output << "    #{label}: #{values.shift}\n"
    puts label
    puts values.join(',')
  end
end

puts output

IO.popen('pbcopy', 'w').print(output)