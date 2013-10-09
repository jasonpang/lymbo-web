from pyramid.view import view_config


@view_config(route_name='home', renderer='landing_page.mako')
def my_view(request):
    print("View got called.")
    return {'project': 'Lymbo'}
