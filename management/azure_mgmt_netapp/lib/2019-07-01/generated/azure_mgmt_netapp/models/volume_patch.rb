# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2019_07_01
  module Models
    #
    # Volume patch resource
    #
    class VolumePatch

      include MsRestAzure

      # @return [String] Resource location
      attr_accessor :location

      # @return [String] Resource Id
      attr_accessor :id

      # @return [String] Resource name
      attr_accessor :name

      # @return [String] Resource type
      attr_accessor :type

      # @return Resource tags
      attr_accessor :tags

      # @return [ServiceLevel] serviceLevel. The service level of the file
      # system. Possible values include: 'Standard', 'Premium', 'Ultra'.
      # Default value: 'Premium' .
      attr_accessor :service_level

      # @return [Integer] usageThreshold. Maximum storage quota allowed for a
      # file system in bytes. This is a soft quota used for alerting only.
      # Minimum size is 100 GiB. Upper limit is 100TiB. Specified in bytes.
      # Default value: 107374182400 .
      attr_accessor :usage_threshold

      # @return [VolumePatchPropertiesExportPolicy] exportPolicy. Set of export
      # policy rules
      attr_accessor :export_policy


      #
      # Mapper for VolumePatch class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'volumePatch',
          type: {
            name: 'Composite',
            class_name: 'VolumePatch',
            model_properties: {
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Object'
                }
              },
              service_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceLevel',
                default_value: 'Premium',
                type: {
                  name: 'String'
                }
              },
              usage_threshold: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.usageThreshold',
                default_value: 107374182400,
                constraints: {
                  InclusiveMaximum: 109951162777600,
                  InclusiveMinimum: 107374182400
                },
                type: {
                  name: 'Number'
                }
              },
              export_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.exportPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'VolumePatchPropertiesExportPolicy'
                }
              }
            }
          }
        }
      end
    end
  end
end
