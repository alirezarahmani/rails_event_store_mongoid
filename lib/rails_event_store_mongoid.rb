require 'rails_event_store/all'
# require 'rails_event_store_mongoid/event'
require 'rails_event_store_cache/event_repository'
require 'rails_event_store_cache/version'

RailsEventStore.event_repository = RailsEventStoreCache::EventRepository.new
