import { httpRequestPost } from '../utils/HttpRequest'

enum Login_api {
  Login = 'xxxx'
}

export function ProxyLogin(params) {
  return httpRequestPost(Login_api.Login, params)
}
