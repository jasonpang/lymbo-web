import datetime
from pyramid.view import view_config
from lymbo.helpers.email import send_email


@view_config(route_name='home', renderer='landing_page.mako', request_method=['GET'])
def home(request):
    return {}


@view_config(route_name='home', renderer='landing_page.mako', request_method=['POST'])
def subscribe(request):
    email = request.POST.get('email')
    if email:
        # Do email validation
        now = datetime.datetime.now()
        success = send_email("subscribe@lymboapp.com",
                   "[Lymbo] " + email + " subscribed",
                   "Email: " + email + "\n" +
                   "Time: " + now.strftime("%Y-%m-%d %H:%M"))
        return {'email_send_attempt': True,
                'email_send_success': success}
    return {'email_send_attempt': True,
            'email_send_success': False}
