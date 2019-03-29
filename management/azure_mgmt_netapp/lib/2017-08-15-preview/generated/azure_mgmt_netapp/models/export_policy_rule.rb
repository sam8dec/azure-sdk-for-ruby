# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2017_08_15_preview
  module Models
    #
    # Volume Export Policy Rule
    #
    class ExportPolicyRule

      include MsRestAzure

      # @return [Integer] Order index
      attr_accessor :rule_index

      # @return [Boolean] Read only access
      attr_accessor :unix_read_only

      # @return [Boolean] Read and write access
      attr_accessor :unix_read_write

      # @return [Boolean] Allows CIFS protocol
      attr_accessor :cifs

      # @return [Boolean] Allows NFSv3 protocol
      attr_accessor :nfsv3

      # @return [Boolean] Allows NFSv4 protocol
      attr_accessor :nfsv4

      # @return [String] Client ingress specification as comma separated string
      # with IPv4 CIDRs, IPv4 host addresses and host names
      attr_accessor :allowed_clients


      #
      # Mapper for ExportPolicyRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'exportPolicyRule',
          type: {
            name: 'Composite',
            class_name: 'ExportPolicyRule',
            model_properties: {
              rule_index: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ruleIndex',
                type: {
                  name: 'Number'
                }
              },
              unix_read_only: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unixReadOnly',
                type: {
                  name: 'Boolean'
                }
              },
              unix_read_write: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unixReadWrite',
                type: {
                  name: 'Boolean'
                }
              },
              cifs: {
                client_side_validation: true,
                required: false,
                serialized_name: 'cifs',
                type: {
                  name: 'Boolean'
                }
              },
              nfsv3: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nfsv3',
                type: {
                  name: 'Boolean'
                }
              },
              nfsv4: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nfsv4',
                type: {
                  name: 'Boolean'
                }
              },
              allowed_clients: {
                client_side_validation: true,
                required: false,
                serialized_name: 'allowedClients',
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
