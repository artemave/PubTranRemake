# Fix calabash broken ruby API. So that instead of
#   performAction('enter_text_into_named_field', text, target)
# one can do just
#   enter_text_into_named_field text, target

module ShishCalabash
  action_files =
    'test-server/instrumentation-backend/src/sh/calaba/instrumentationbackend/actions/**/*.java'
  calabash = Gem::Specification.find_by_name 'calabash-android'

  Dir[File.join calabash.gem_dir, action_files].map(&File.method(:read)).grep /return "([^"]*)";/ do
    action = $1
    define_method action do |*args|
      performAction action, *args
    end
  end
end

World ShishCalabash
