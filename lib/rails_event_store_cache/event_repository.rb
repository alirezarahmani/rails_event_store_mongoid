module RailsEventStoreCache
  class EventRepository

    def initialize(adapter: ::Rails.cache)
      @adapter = adapter
    end
    attr_reader :adapter

    def create(event, stream_name)

      adapter.fetch(stream_name, expires_in: 15.minutes) do
        {
            stream:     stream_name,
            event_id:   event.event_id,
            event_type: event.class,
            data:       event.data,
            meta:       event.metadata,
        }
      end

      event
    end


    def stream_event(stream_name)
      adapter.fetch(stream_name)
    end

  end
end
