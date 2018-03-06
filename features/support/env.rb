# Any 'run once' setup should go here as this file is evaluated
# when the environment loads.
# Any helper functions added here will be available in step
# definitions

Dir.chdir('features/fixtures/ios-swift-cocoapods') do
  run_required_commands([
    ['bundle', 'install'],
    ['bundle', 'exec', 'pod', 'install'],
    ['../../scripts/build_ios_app.sh'],
  ])
end

# Scenario hooks
Before do
# Runs before every Scenario
end

After do
  run_required_commands([
    ['features/scripts/kill_ios_simulator.sh']
  ])
end