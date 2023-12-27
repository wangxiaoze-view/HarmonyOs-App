import { httpRequestPost } from '../utils/HttpRequest'

enum Login_api {
  Login = '/v5/merchant/miniProgramLogin'
}

export function ProxyLogin(params) {
  return httpRequestPost(Login_api.Login, params)
}
