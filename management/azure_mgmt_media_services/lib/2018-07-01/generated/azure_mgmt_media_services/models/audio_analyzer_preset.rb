# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # The Audio Analyzer preset applies a pre-defined set of AI-based analysis
    # operations, including speech transcription. Currently, the preset
    # supports processing of content with a single audio track.
    #
    class AudioAnalyzerPreset < Preset

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.AudioAnalyzerPreset"
      end

      attr_accessor :odatatype

      # @return [String] The language for the audio payload in the input using
      # the BCP-47 format of 'language tag-region' (e.g: 'en-US').  The list of
      # supported languages are English ('en-US' and 'en-GB'), Spanish ('es-ES'
      # and 'es-MX'), French ('fr-FR'), Italian ('it-IT'), Japanese ('ja-JP'),
      # Portuguese ('pt-BR'), Chinese ('zh-CN'), German ('de-DE'), Arabic
      # ('ar-EG' and 'ar-SY'), Russian ('ru-RU'), Hindi ('hi-IN'), and Korean
      # ('ko-KR'). If you know the language of your content, it is recommended
      # that you specify it. If the language isn't specified or set to null,
      # automatic language detection will choose the first language detected
      # and process with the selected language for the duration of the file.
      # This language detection feature currently supports English, Chinese,
      # French, German, Italian, Japanese, Spanish, Russian, and Portuguese. It
      # does not currently support dynamically switching between languages
      # after the first language is detected. The automatic detection works
      # best with audio recordings with clearly discernable speech. If
      # automatic detection fails to find the language, transcription would
      # fallback to 'en-US'."
      attr_accessor :audio_language


      #
      # Mapper for AudioAnalyzerPreset class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.AudioAnalyzerPreset',
          type: {
            name: 'Composite',
            class_name: 'AudioAnalyzerPreset',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              audio_language: {
                client_side_validation: true,
                required: false,
                serialized_name: 'audioLanguage',
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
