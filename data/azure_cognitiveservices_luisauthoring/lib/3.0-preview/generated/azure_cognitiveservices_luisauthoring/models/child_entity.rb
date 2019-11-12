# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V3_0_preview
  module Models
    #
    # The base child entity type.
    #
    class ChildEntity

      include MsRestAzure

      # @return The ID (GUID) belonging to a child entity.
      attr_accessor :id

      # @return [String] The name of a child entity.
      attr_accessor :name

      # @return [String] Instance of Model.
      attr_accessor :instance_of

      # @return [Integer] The type ID of the Entity Model.
      attr_accessor :type_id

      # @return [Enum] Possible values include: 'Entity Extractor', 'Child
      # Entity Extractor', 'Hierarchical Entity Extractor', 'Hierarchical Child
      # Entity Extractor', 'Composite Entity Extractor', 'List Entity
      # Extractor', 'Prebuilt Entity Extractor', 'Intent Classifier',
      # 'Pattern.Any Entity Extractor', 'Closed List Entity Extractor', 'Regex
      # Entity Extractor'
      attr_accessor :readable_type

      # @return [Array<ChildEntity>] List of children
      attr_accessor :children


      #
      # Mapper for ChildEntity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ChildEntity',
          type: {
            name: 'Composite',
            class_name: 'ChildEntity',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              instance_of: {
                client_side_validation: true,
                required: false,
                serialized_name: 'instanceOf',
                type: {
                  name: 'String'
                }
              },
              type_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeId',
                type: {
                  name: 'Number'
                }
              },
              readable_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'readableType',
                type: {
                  name: 'String'
                }
              },
              children: {
                client_side_validation: true,
                required: false,
                serialized_name: 'children',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ChildEntityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ChildEntity'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end