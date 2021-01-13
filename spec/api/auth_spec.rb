require('swagger_helper')

describe 'Authentication' do
  path '/api/users' do
    post 'SignUp' do
      tags 'Authentication'
      security []
      consumes 'application/json'
      produces 'application/json'

      parameter name: :user,
                in: :body,
                schema: {
                  type: :object,
                  properties: {
                    user: {
                      type: :object,
                      properties: {
                        email: { type: :string },
                        password: { type: :string }
                      },
                      required: %i[email password]
                    },
                    required: %i[user]
                  }
                }
      response '200', 'SignUp Successfully' do
        run_test!
      end

      response '404', 'Api Not Found' do
        run_test!
      end

      response '400', 'Bad Request' do
        run_test!
      end
    end
  end

  path '/api/oauth/token' do
    post 'SignIn' do
      tags 'Authentication'
      security []
      consumes 'application/json'

      parameter name: :customer,
                in: :body,
                schema: {
                  type: :object,
                  properties: {
                    email: { type: :string },
                    password: { type: :string },
                    grant_type: { type: :string, example: 'password' }
                  },
                  required: %i[email password grant_type]
                }

      response '200', 'Access Token' do
        run_test!
      end

      response '404', 'Api Not Found' do
        run_test!
      end

      response '400', 'Bad Request' do
        run_test!
      end
    end
  end
end
