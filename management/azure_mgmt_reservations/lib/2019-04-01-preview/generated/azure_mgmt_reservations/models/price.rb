# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Reservations::Mgmt::V2019_04_01_preview
  module Models
    #
    # Model object.
    #
    #
    class Price

      include MsRestAzure

      # @return [String] The ISO 4217 3-letter currency code for the currency
      # used by this purchase record.
      attr_accessor :currency_code

      # @return [Float]
      attr_accessor :amount


      #
      # Mapper for Price class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Price',
          type: {
            name: 'Composite',
            class_name: 'Price',
            model_properties: {
              currency_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'currencyCode',
                type: {
                  name: 'String'
                }
              },
              amount: {
                client_side_validation: true,
                required: false,
                serialized_name: 'amount',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
