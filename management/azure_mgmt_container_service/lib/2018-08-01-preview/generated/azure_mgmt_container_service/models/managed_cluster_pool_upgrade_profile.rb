# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2018_08_01_preview
  module Models
    #
    # The list of available upgrade versions.
    #
    class ManagedClusterPoolUpgradeProfile

      include MsRestAzure

      # @return [String] Kubernetes version (major, minor, patch).
      attr_accessor :kubernetes_version

      # @return [String] Pool name.
      attr_accessor :name

      # @return [OSType] OsType to be used to specify os type. Choose from
      # Linux and Windows. Default to Linux. Possible values include: 'Linux',
      # 'Windows'. Default value: 'Linux' .
      attr_accessor :os_type

      # @return [Array<String>] List of orchestrator types and versions
      # available for upgrade.
      attr_accessor :upgrades


      #
      # Mapper for ManagedClusterPoolUpgradeProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedClusterPoolUpgradeProfile',
          type: {
            name: 'Composite',
            class_name: 'ManagedClusterPoolUpgradeProfile',
            model_properties: {
              kubernetes_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kubernetesVersion',
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
              os_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'osType',
                default_value: 'Linux',
                type: {
                  name: 'String'
                }
              },
              upgrades: {
                client_side_validation: true,
                required: false,
                serialized_name: 'upgrades',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
