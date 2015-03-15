# This file was auto-generated by lib/generators/tasks/generate.rb

module Slack
  module Endpoint
    module Chat
      #
      # Deletes a message.
      #
      # @option options [Object] :ts
      #   Timestamp of the message to be deleted.
      # @option options [channel] :channel
      #   Channel containing the message to be deleted.
      # @see https://api.slack.com/methods/chat.delete
      # @see https://github.com/slackhq/slack-api-docs/blob/master/methods/chat.delete.md
      # @see https://github.com/slackhq/slack-api-docs/blob/master/methods/chat.delete.json
      def chat_delete(options={})
        throw ArgumentError.new("Required arguments :ts missing") if options[:ts].nil?
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        post("chat.delete", options)
      end

      #
      # Sends a message to a channel.
      #
      # @option options [channel] :channel
      #   Channel to send message to. Can be a public channel, private group or IM channel. Can be an encoded ID, or a name.
      # @option options [Object] :text
      #   Text of the message to send. See below for an explanation of formatting.
      # @option options [Object] :username
      #   Name of bot.
      # @option options [Object] :parse
      #   Change how messages are treated. See below.
      # @option options [Object] :link_names
      #   Find and link channel names and usernames.
      # @option options [Object] :attachments
      #   Structured message attachments.
      # @option options [Object] :unfurl_links
      #   Pass true to enable unfurling of primarily text-based content.
      # @option options [Object] :unfurl_media
      #   Pass false to disable unfurling of media content.
      # @option options [Object] :icon_url
      #   URL to an image to use as the icon for this message
      # @option options [Object] :icon_emoji
      #   emoji to use as the icon for this message. Overrides `icon_url`.
      # @see https://api.slack.com/methods/chat.postMessage
      # @see https://github.com/slackhq/slack-api-docs/blob/master/methods/chat.postMessage.md
      # @see https://github.com/slackhq/slack-api-docs/blob/master/methods/chat.postMessage.json
      def chat_postMessage(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :text missing") if options[:text].nil?
        options[:attachments] = options[:attachments].to_json if options[:attachments]
        post("chat.postMessage", options)
      end

      #
      # Updates a message.
      #
      # @option options [Object] :ts
      #   Timestamp of the message to be updated.
      # @option options [channel] :channel
      #   Channel containing the message to be updated.
      # @option options [Object] :text
      #   New text for the message, using the [default formatting rules](/docs/formatting).
      # @see https://api.slack.com/methods/chat.update
      # @see https://github.com/slackhq/slack-api-docs/blob/master/methods/chat.update.md
      # @see https://github.com/slackhq/slack-api-docs/blob/master/methods/chat.update.json
      def chat_update(options={})
        throw ArgumentError.new("Required arguments :ts missing") if options[:ts].nil?
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :text missing") if options[:text].nil?
        post("chat.update", options)
      end

    end
  end
end
