import json
from ibm_watson import VisualRecognitionV4
from ibm_watson.visual_recognition_v4 import FileWithMetadata, AnalyzeEnums
from ibm_cloud_sdk_core.authenticators import IAMAuthenticator, authenticator
from flask import Flask, request, jsonify, Response, make_response
from flask_cors import CORS, cross_origin
import json

app = Flask(__name__)

cors = CORS(app)
app.config['CORS_HEADERS'] = 'Content-Type'

@app.route('/ine/recognition', methods = ['GET'])
def get_ine():
    apikey = 'i6Ze6gqvd1XrPj624Z-BGbejpQosiVKjnKaW-YVsM1cf'
    url = 'https://api.us-south.visual-recognition.watson.cloud.ibm.com/instances/a48f0673-5423-47cf-8295-d5b52a90921c'
    collection = '031fbbd1-cc79-4cf0-ac3c-e5ffd0c25cdc'

    authenticator = IAMAuthenticator(apikey)
    service = VisualRecognitionV4('2021-04-29', authenticator=authenticator)
    service.set_service_url(url)

    path = '././images/ine_ejemplo.jpg'

    with open(path, 'rb') as ine_img:
        analyze_images = service.analyze(collection_ids=[collection],
                                            features=[AnalyzeEnums.Features.OBJECTS.value],
                                            images_file=[FileWithMetadata(ine_img)]).get_result()


    print(analyze_images)
    response = json.dumps(analyze_images)
    return Response(response, mimetype='application/json')
                                    