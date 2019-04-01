# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # A combination of user defined name and user specified data and
    # recognition model name for largePersonGroup/personGroup, and
    # largeFaceList/faceList.
    #
    class MetaDataContract < NameAndUserDataContract

      include MsRestAzure

      # @return [RecognitionModel] Possible values include: 'recognition_01',
      # 'recognition_02'. Default value: 'recognition_01' .
      attr_accessor :recognition_model


      #
      # Mapper for MetaDataContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MetaDataContract',
          type: {
            name: 'Composite',
            class_name: 'MetaDataContract',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                constraints: {
                  MaxLength: 128
                },
                type: {
                  name: 'String'
                }
              },
              user_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userData',
                constraints: {
                  MaxLength: 16384
                },
                type: {
                  name: 'String'
                }
              },
              recognition_model: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recognitionModel',
                default_value: 'recognition_01',
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
