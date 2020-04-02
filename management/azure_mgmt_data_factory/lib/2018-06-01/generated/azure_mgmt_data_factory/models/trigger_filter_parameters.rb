# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Query parameters for triggers.
    #
    class TriggerFilterParameters

      include MsRestAzure

      # @return [String] The continuation token for getting the next page of
      # results. Null for first page.
      attr_accessor :continuation_token

      # @return [String] The name of the parent TumblingWindowTrigger to get
      # the child rerun triggers
      attr_accessor :parent_trigger_name


      #
      # Mapper for TriggerFilterParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TriggerFilterParameters',
          type: {
            name: 'Composite',
            class_name: 'TriggerFilterParameters',
            model_properties: {
              continuation_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'continuationToken',
                type: {
                  name: 'String'
                }
              },
              parent_trigger_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parentTriggerName',
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