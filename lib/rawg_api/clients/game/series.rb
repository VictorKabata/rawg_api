module RawgApi
  module Clients
    class Games
      class Series < Clients::BaseClient
        rawg_api :'game-series'

        def find(id, page: 1, page_size: DEFAULT_PAGE_SIZE)
          get(prefix: [:games, id], params: {page: page, page_size: page_size})
        end

      end
    end
  end
end