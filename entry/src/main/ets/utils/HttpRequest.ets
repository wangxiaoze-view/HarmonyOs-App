import http from '@ohos.net.http';
import Logger from './Logger';
import { CryptoJS } from '@ohos/crypto-js'
import Prompt from '@system.prompt';


function getNonce() {
  const chars = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
  let res = "";
  for (let i = 0; i < 6; i++) {
    let id = Math.ceil(Math.random() * 35);
    res += chars[id];
  }
  return res;
}


// 加密
function encrypt(key, iv, data) {
  let encrypted = CryptoJS.AES.encrypt(CryptoJS.enc.Utf8.parse(data), CryptoJS.enc.Utf8.parse(key), {
    iv: CryptoJS.enc.Utf8.parse(iv),
    mode: CryptoJS.mode.CBC,
    padding: CryptoJS.pad.Pkcs7
  });
  return encrypted.toString();
}


export function httpRequestGet(url: string) {
  return httpRequest(url, http.RequestMethod.GET);
}

export function httpRequestPost(url: string, params?: any) {
  return httpRequest(url, http.RequestMethod.POST, params);
}

function httpRequest(url: string, method: http.RequestMethod, params?: any) {
  let httpRequest = http.createHttp();

  const appId = ''
  const appKey = ''
  let timestamp = new Date().getTime();
  let nonce = getNonce()
  let signStr = appKey + "&" + timestamp + "&" + nonce;
  // 加密
  if (params.data) {
    let iv = Math.floor(timestamp / 1000) + "" + nonce;
    params.data = encrypt(appKey, iv, params.data)
  }


  let responseResult = httpRequest.request('你自己的请求域名' + url, {
    method: method,
    readTimeout: 60 * 1000, //读取超时时间 可选，默认为60000ms
    header: {
      'Content-Type': 'application/json;charset=UTF-8',
      'appId': appId,
      timestamp,
      nonce,
      sign: CryptoJS.MD5(signStr),
      sysCode: "wechat-applet",
    },
    connectTimeout: 60 * 1000, //连接超时时间  可选，默认为60000ms
    extraData: params, // 请求参数
  });
  return responseResult.then((value: http.HttpResponse) => {
    if (value.responseCode == 200) {
      let getResult = value.result;
      Logger.error('请求返回数据', JSON.stringify(getResult));
      if (!getResult['success']) {
        Prompt.showToast({
          message: getResult['message'] || '111'
        })
      }
      return getResult;
    }
  }).catch((err) => {
    Prompt.showToast({
      message: err['message']
    })
    return "";
  });
}