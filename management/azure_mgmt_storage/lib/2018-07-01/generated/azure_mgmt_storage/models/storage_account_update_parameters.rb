# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2018_07_01
  module Models
    #
    # The parameters that can be provided when updating the storage account
    # properties.
    #
    class StorageAccountUpdateParameters

      include MsRestAzure

      # @return [Sku] Gets or sets the SKU name. Note that the SKU name cannot
      # be updated to Standard_ZRS, Premium_LRS or Premium_ZRS, nor can
      # accounts of those sku names be updated to any other value.
      attr_accessor :sku

      # @return [Hash{String => String}] Gets or sets a list of key value pairs
      # that describe the resource. These tags can be used in viewing and
      # grouping this resource (across resource groups). A maximum of 15 tags
      # can be provided for a resource. Each tag must have a key no greater in
      # length than 128 characters and a value no greater in length than 256
      # characters.
      attr_accessor :tags

      # @return [Identity] The identity of the resource.
      attr_accessor :identity

      # @return [CustomDomain] Custom domain assigned to the storage account by
      # the user. Name is the CNAME source. Only one custom domain is supported
      # per storage account at this time. To clear the existing custom domain,
      # use an empty string for the custom domain name property.
      attr_accessor :custom_domain

      # @return [Encryption] Provides the encryption settings on the account.
      # The default setting is unencrypted.
      attr_accessor :encryption

      # @return [AccessTier] Required for storage accounts where kind =
      # BlobStorage. The access tier used for billing. Possible values include:
      # 'Hot', 'Cool'
      attr_accessor :access_tier

      # @return [Boolean] Enables Azure Files AAD Integration for SMB if sets
      # to true.
      attr_accessor :enable_azure_files_aad_integration

      # @return [Boolean] Allows https traffic only to storage service if sets
      # to true.
      attr_accessor :enable_https_traffic_only

      # @return [NetworkRuleSet] Network rule set
      attr_accessor :network_rule_set

      # @return [Kind] Optional. Indicates the type of storage account.
      # Currently only StorageV2 value supported by server. Possible values
      # include: 'Storage', 'StorageV2', 'BlobStorage', 'FileStorage',
      # 'BlockBlobStorage'
      attr_accessor :kind


      #
      # Mapper for StorageAccountUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageAccountUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'StorageAccountUpdateParameters',
            model_properties: {
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'Identity'
                }
              },
              custom_domain: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.customDomain',
                type: {
                  name: 'Composite',
                  class_name: 'CustomDomain'
                }
              },
              encryption: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.encryption',
                type: {
                  name: 'Composite',
                  class_name: 'Encryption'
                }
              },
              access_tier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.accessTier',
                type: {
                  name: 'Enum',
                  module: 'AccessTier'
                }
              },
              enable_azure_files_aad_integration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.azureFilesAadIntegration',
                type: {
                  name: 'Boolean'
                }
              },
              enable_https_traffic_only: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.supportsHttpsTrafficOnly',
                type: {
                  name: 'Boolean'
                }
              },
              network_rule_set: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.networkAcls',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkRuleSet'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'Enum',
                  module: 'Kind'
                }
              }
            }
          }
        }
      end
    end
  end
end
