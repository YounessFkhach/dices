require 'test_helper'

module Queries
  class Rolls < ActionDispatch::IntegrationTest
    # TODO: fix these tests
    # def perform(session_id)
    #   query_string = <<-GRAPHQL
    #     query Rolls {
    #       rolls {
    #         totalCount
    #         pageInfo {
    #           hasNextPage
    #           endCursor
    #         }
    #         edges {
    #           node {
    #             id
    #             total
    #             dices {
    #               totalCount
    #               nodes {
    #                 value
    #                 dice
    #                 isAdvantage
    #               }
    #             }
    #           }
    #         }
    #       }
    #     }
    #   GRAPHQL

    #   post "/graphql", params: {
    #     query: query_string
    #   }
    # end

    # test 'list the rolls' do
    #   session_id = SecureRandom.uuid
    #   rolls = (1..3).map do |t|
    #     new_roll = rolls(:one).dup
    #     new_roll.session_id = session_id
    #     new_roll.save
    #     new_roll
    #   end

    #   perform(session_id)

    #   assert_response :success

    #   data = JSON.parse(@response.body)["data"]["rolls"]

    #   assert_equal rolls["totalCount"], 3
    #   assert_equal rolls["edges"]["nodes"].map { |r| r["id"] }, rolls.map(&:id)
    # end

    # test 'lists only the rolls from the current session' do

    # end
  end
end
