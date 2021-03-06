module Chatmeter
  class API

    # GET /users
    def list_all_users(params={})
      request(
        expects: 200,
        method:  :get,
        path:    "/users",
        query:    params
      )[:users]
    end

    # GET /user/{user_id}
    def get_user(user_id)
      request(
        expects: 200,
        method:  :get,
        path:    "/user/#{user_id}"
      )
    end

    # POST /users
    def create_new_user(params)
      request(
        expects:  200,
        method:   :post,
        path:     "/users",
        body:     params.to_json
      )
    end

    # PUT /users/{user_id}
    def update_user(user_id, params)
      request(
        expects:  200,
        method:   :put,
        path:     "/users/#{user_id}",
        body:     params.to_json
      )
    end

    # PUT /users/{user_id}/password
    def update_user_password(user_id, params)
      request(
        expects:  200,
        method:   :put,
        path:     "/users/#{user_id}/password",
        body:    params.to_json
      )
    end

    # DELETE /users/{user_id}
    def delete_user(user_id)
      request(
        expects:  200,
        method:   :delete,
        path:     "/users/#{user_id}"
      )
    end

    # POST /users
    def enable_user(user_id, params)
      request(
        expects:  200,
        method:   :post,
        path:     "/users/#{user_id}/status",
        body:    params.to_json
      )
    end

    def add_sub_account(user_id, params)
      request(
        expects: 200,
        method: :put,
        path: "/users/#{user_id}/accounts",
        body: params.to_json
      )
    end

    def get_user_locations(user_id)
      request(
        expects: 200,
        method: :get,
        path: "/users/#{user_id}/locations"
      )
    end
  end
end
