# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_06_01
  module Models
    #
    # SSL certificates of an application gateway.
    #
    class ApplicationGatewaySslCertificate < SubResource

      include MsRestAzure

      # @return [String] Base-64 encoded pfx certificate. Only applicable in
      # PUT Request.
      attr_accessor :data

      # @return [String] Password for the pfx file specified in data. Only
      # applicable in PUT request.
      attr_accessor :password

      # @return [String] Base-64 encoded Public cert data corresponding to pfx
      # specified in data. Only applicable in GET request.
      attr_accessor :public_cert_data

      # @return [String] Provisioning state of the SSL certificate resource
      # Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] Name of the SSL certificate that is unique within an
      # Application Gateway.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [String] Type of the resource.
      attr_accessor :type


      #
      # Mapper for ApplicationGatewaySslCertificate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewaySslCertificate',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewaySslCertificate',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.data',
                type: {
                  name: 'String'
                }
              },
              password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.password',
                type: {
                  name: 'String'
                }
              },
              public_cert_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.publicCertData',
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
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
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
              }
            }
          }
        }
      end
    end
  end
end
