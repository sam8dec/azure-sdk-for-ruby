# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Describes the mechanism for performing a scaling operation.
    #
    class ScalingMechanismDescription

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["PartitionInstanceCount"] = "PartitionInstanceCountScaleMechanism"
      @@discriminatorMap["AddRemoveIncrementalNamedPartition"] = "AddRemoveIncrementalNamedPartitionScalingMechanism"

      def initialize
        @Kind = "ScalingMechanismDescription"
      end

      attr_accessor :Kind


      #
      # Mapper for ScalingMechanismDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ScalingMechanismDescription',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'Kind',
            uber_parent: 'ScalingMechanismDescription',
            class_name: 'ScalingMechanismDescription',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
