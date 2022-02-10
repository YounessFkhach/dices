require "graphql/rake_task"
GraphQL::RakeTask.new(schema_name: "MyappSchema", directory: './app/javascript')
