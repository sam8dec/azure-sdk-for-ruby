# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::TextAnalytics::V2_1
  module Models
    #
    # Model object.
    #
    #
    class EntityRecord

      include MsRestAzure

      # @return [String] Entity formal name.
      attr_accessor :name

      # @return [Array<MatchRecord>] List of instances this entity appears in
      # the text.
      attr_accessor :matches

      # @return [String] Wikipedia language for which the WikipediaId and
      # WikipediaUrl refers to.
      attr_accessor :wikipedia_language

      # @return [String] Wikipedia unique identifier of the recognized entity.
      attr_accessor :wikipedia_id

      # @return [String] URL for the entity's Wikipedia page.
      attr_accessor :wikipedia_url

      # @return [String] Bing unique identifier of the recognized entity. Use
      # in conjunction with the Bing Entity Search API to fetch additional
      # relevant information.
      attr_accessor :bing_id

      # @return [String] Entity type from Named Entity Recognition model
      attr_accessor :type

      # @return [String] Entity sub type from Named Entity Recognition model
      attr_accessor :sub_type


      #
      # Mapper for EntityRecord class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EntityRecord',
          type: {
            name: 'Composite',
            class_name: 'EntityRecord',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              matches: {
                client_side_validation: true,
                required: false,
                serialized_name: 'matches',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MatchRecordElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MatchRecord'
                      }
                  }
                }
              },
              wikipedia_language: {
                client_side_validation: true,
                required: false,
                serialized_name: 'wikipediaLanguage',
                type: {
                  name: 'String'
                }
              },
              wikipedia_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'wikipediaId',
                type: {
                  name: 'String'
                }
              },
              wikipedia_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'wikipediaUrl',
                type: {
                  name: 'String'
                }
              },
              bing_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'bingId',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              sub_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subType',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
