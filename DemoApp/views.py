from socket import gethostname
from django.views.generic.base import TemplateView
from .models import OrdersModel
from TBDjangoDemo.settings import ENABLE_POSTGRES

class IndexView(TemplateView):
    template_name = "index.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        orders_list = OrdersModel.objects.all()
        context['orders_list'] = orders_list
        context['enable_postgres'] = ENABLE_POSTGRES
        context['hostname'] = gethostname()

        return context

