module Chatmeter
    class API

      # GET /accounts for user
      def get_accounts_for_user(user_id)
        request(
          expects: 200,
          method:  :get,
          path:    "/accounts/forUser/#{user_id}"
        )[:accountIds]
      end

      # GET /accounts
      def accounts(query={})
        request(
          expects: 200,
          method:  :get,
          path:    '/accounts',
          query:    query
        )[:accounts]
      end

      # POST /accounts
      def add_new_account(params)
        request(
          expects:  200,
          method:   :post,
          path:     "/accounts",
          body:     params.to_json
        )
      end

      # GET account's groups
      def get_account_groups(account_id)
        request(
          expects: 200,
          method:  :get,
          path:    "/groups",
          query: {
            accountId: account_id
          }
        )[:groups]
      end

    end
  end
