# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::VMwareCloudSimple::Mgmt::V2019_04_01
  module Models
    #
    # List of available operation display property service specification
    # metrics
    #
    class AvailableOperationDisplayPropertyServiceSpecificationMetricsList

      include MsRestAzure

      # @return
      # [Array<AvailableOperationDisplayPropertyServiceSpecificationMetricsItem>]
      # Metric specifications of operation
      attr_accessor :metric_specifications


      #
      # Mapper for
      # AvailableOperationDisplayPropertyServiceSpecificationMetricsList class
      # as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AvailableOperationDisplayPropertyServiceSpecificationMetricsList',
          type: {
            name: 'Composite',
            class_name: 'AvailableOperationDisplayPropertyServiceSpecificationMetricsList',
            model_properties: {
              metric_specifications: {
                client_side_validation: true,
                required: false,
                serialized_name: 'metricSpecifications',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AvailableOperationDisplayPropertyServiceSpecificationMetricsItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AvailableOperationDisplayPropertyServiceSpecificationMetricsItem'
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
