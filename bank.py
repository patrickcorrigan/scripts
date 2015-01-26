import urllib.parse
import urllib.request
import json


def get_bank_balance():
    url = """http://9.9.9.9:9/AIBInternetBankingService/v1/login/registration"""
    values = {'REGISTRATION_NUMBER': '9999999999999'}
    data = urllib.parse.urlencode(values)
    data = data.encode('utf-8')  # data should be bytes
    req = urllib.request.Request(url, data)
    response = urllib.request.urlopen(req)
    the_page = response.read()
    json_dict = json.loads(the_page.decode("utf-8"))

    last_four_digits = "99999999"
    code = "999999999999"

    test_resp = json_dict

    sessionId = test_resp['sessionId']
    digit_1 = int(test_resp['digit1'])
    digit_2 = int(test_resp['digit2'])
    digit_3 = int(test_resp['digit3'])

    response_url = """http://9.9.9.9:9/AIBInternetBankingService/v1/login/pac?sessionId="""+sessionId
    pac_1 = code[digit_1 - 1]
    pac_2 = code[digit_2 - 1]
    pac_3 = code[digit_3 - 1]
    response_values = {'PAC1': pac_1, 'PAC2': pac_2, 'PAC3': pac_3, 'DIGITS': last_four_digits}

    response_data = urllib.parse.urlencode(response_values)
    response_data = response_data.encode('utf-8')  # data should be bytes
    response_req = urllib.request.Request(response_url, response_data)
    response_response = urllib.request.urlopen(response_req)
    response_the_page = response_response.read()
    response_json_dict = json.loads(response_the_page.decode("utf-8"))
    return response_json_dict['balances'][0]['balance']

print(get_bank_balance())
