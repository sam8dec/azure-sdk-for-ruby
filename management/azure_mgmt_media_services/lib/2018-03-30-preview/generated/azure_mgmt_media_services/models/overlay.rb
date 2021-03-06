# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # Base type for all overlays - image, audio or video.
    #
    class Overlay

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["#Microsoft.Media.AudioOverlay"] = "AudioOverlay"
      @@discriminatorMap["#Microsoft.Media.VideoOverlay"] = "VideoOverlay"

      def initialize
        @odatatype = "Overlay"
      end

      attr_accessor :odatatype

      # @return [String] The label of the job input which is to be used as an
      # overlay. The Input must specify exactly one file. You can specify an
      # image file in JPG or PNG formats, or an audio file (such as a WAV, MP3,
      # WMA or M4A file), or a video file. See https://aka.ms/mesformats for
      # the complete list of supported audio and video file formats.
      attr_accessor :input_label

      # @return [Duration] The start position, with reference to the input
      # video, at which the overlay starts. The value should be in ISO 8601
      # format. For example, PT05S to start the overlay at 5 seconds in to the
      # input video. If not specified the overlay starts from the beginning of
      # the input video.
      attr_accessor :start

      # @return [Duration] The position in the input video at which the overlay
      # ends. The value should be in ISO 8601 duration format. For example,
      # PT30S to end the overlay at 30 seconds in to the input video. If not
      # specified the overlay will be applied until the end of the input video
      # if inputLoop is true. Else, if inputLoop is false, then overlay will
      # last as long as the duration of the overlay media.
      attr_accessor :end_property

      # @return [Duration] The duration over which the overlay fades in onto
      # the input video. The value should be in ISO 8601 duration format. If
      # not specified the default behavior is to have no fade in (same as
      # PT0S).
      attr_accessor :fade_in_duration

      # @return [Duration] The duration over which the overlay fades out of the
      # input video. The value should be in ISO 8601 duration format. If not
      # specified the default behavior is to have no fade out (same as PT0S).
      attr_accessor :fade_out_duration

      # @return [Float] The gain level of audio in the overlay. The value
      # should be in the range [0, 1.0]. The default is 1.0.
      attr_accessor :audio_gain_level


      #
      # Mapper for Overlay class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Overlay',
          type: {
            name: 'Composite',
            polymorphic_discriminator: '@odata.type',
            uber_parent: 'Overlay',
            class_name: 'Overlay',
            model_properties: {
              input_label: {
                client_side_validation: true,
                required: false,
                serialized_name: 'inputLabel',
                type: {
                  name: 'String'
                }
              },
              start: {
                client_side_validation: true,
                required: false,
                serialized_name: 'start',
                type: {
                  name: 'TimeSpan'
                }
              },
              end_property: {
                client_side_validation: true,
                required: false,
                serialized_name: 'end',
                type: {
                  name: 'TimeSpan'
                }
              },
              fade_in_duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fadeInDuration',
                type: {
                  name: 'TimeSpan'
                }
              },
              fade_out_duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fadeOutDuration',
                type: {
                  name: 'TimeSpan'
                }
              },
              audio_gain_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'audioGainLevel',
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
