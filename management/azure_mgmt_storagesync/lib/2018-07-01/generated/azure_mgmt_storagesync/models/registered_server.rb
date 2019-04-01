# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2018_07_01
  module Models
    #
    # Registered Server resource.
    #
    class RegisteredServer < ProxyResource

      include MsRestAzure

      # @return [String] Registered Server Certificate
      attr_accessor :server_certificate

      # @return [String] Registered Server Agent Version
      attr_accessor :agent_version

      # @return [String] Registered Server OS Version
      attr_accessor :server_osversion

      # @return [Integer] Registered Server Management Error Code
      attr_accessor :server_managementt_error_code

      # @return [String] Registered Server last heart beat
      attr_accessor :last_heart_beat

      # @return [String] Registered Server Provisioning State
      attr_accessor :provisioning_state

      # @return [String] Registered Server serverRole
      attr_accessor :server_role

      # @return [String] Registered Server clusterId
      attr_accessor :cluster_id

      # @return [String] Registered Server clusterName
      attr_accessor :cluster_name

      # @return [String] Registered Server serverId
      attr_accessor :server_id

      # @return [String] Registered Server storageSyncServiceUid
      attr_accessor :storage_sync_service_uid

      # @return [String] Registered Server lastWorkflowId
      attr_accessor :last_workflow_id

      # @return [String] Resource Last Operation Name
      attr_accessor :last_operation_name

      # @return [String] Resource discoveryEndpointUri
      attr_accessor :discovery_endpoint_uri

      # @return [String] Resource Location
      attr_accessor :resource_location

      # @return [String] Service Location
      attr_accessor :service_location

      # @return [String] Friendly Name
      attr_accessor :friendly_name

      # @return [String] Management Endpoint Uri
      attr_accessor :management_endpoint_uri

      # @return [String] Monitoring Configuration
      attr_accessor :monitoring_configuration


      #
      # Mapper for RegisteredServer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RegisteredServer',
          type: {
            name: 'Composite',
            class_name: 'RegisteredServer',
            model_properties: {
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
              server_certificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serverCertificate',
                type: {
                  name: 'String'
                }
              },
              agent_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.agentVersion',
                type: {
                  name: 'String'
                }
              },
              server_osversion: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serverOSVersion',
                type: {
                  name: 'String'
                }
              },
              server_managementt_error_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serverManagementtErrorCode',
                type: {
                  name: 'Number'
                }
              },
              last_heart_beat: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastHeartBeat',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              server_role: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serverRole',
                type: {
                  name: 'String'
                }
              },
              cluster_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clusterId',
                type: {
                  name: 'String'
                }
              },
              cluster_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clusterName',
                type: {
                  name: 'String'
                }
              },
              server_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serverId',
                type: {
                  name: 'String'
                }
              },
              storage_sync_service_uid: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageSyncServiceUid',
                type: {
                  name: 'String'
                }
              },
              last_workflow_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastWorkflowId',
                type: {
                  name: 'String'
                }
              },
              last_operation_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastOperationName',
                type: {
                  name: 'String'
                }
              },
              discovery_endpoint_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.discoveryEndpointUri',
                type: {
                  name: 'String'
                }
              },
              resource_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceLocation',
                type: {
                  name: 'String'
                }
              },
              service_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceLocation',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.friendlyName',
                type: {
                  name: 'String'
                }
              },
              management_endpoint_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.managementEndpointUri',
                type: {
                  name: 'String'
                }
              },
              monitoring_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.monitoringConfiguration',
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
