# Create an AWS CDK app

1. Create the app MyWidgetService

```
mkdir MyWidgetService
cd MyWidgetService
cdk init --language python
source .venv/bin/activate
pip install -r requirements.txt
```

2. Run the app and note that it synthesizes an empty stack

```
cdk synth
```

3. Create the resources directory in the project's main directory

```
mkdir resources
```

4. Create the `widgets.js` file in the resources directory (use code from widgets.js file)

5. Save it and be sure the project still results in an empty stack

```
cdk synth
```

6. Create the widget service using a new source file named `my_widget_service/widget_service.py`

7. Copy the code from the widget_service.py file and save

5. Save the app and make sure it still synthesizes an empty stack.

```
cdk synth
```

6. Edit the `my_widget_service/my_widget_service_stack.py` file

7. Add the following code directly under "from constructs import Construct"

```
from . import widget_service
```

8. Replace the first comment in red towards the bottom of the file with this code:

```python
        widget_service.WidgetService(self, "Widgets")
```

9. Make sure the app still syntehsizes a stack
```
cdk synth
```
10. Deploy the app by bootstrapping the AWS environment

```
cdk bootstrap aws://059535961489/us-east-1
```
11. Deploy the app:

```
cdk deploy
```

12. Test the app by running the API execution URL, e.g.https://GUID.execute-api-REGION.amazonaws.com/prod/

