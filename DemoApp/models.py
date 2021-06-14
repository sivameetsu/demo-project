from uuid import uuid4
from django.db import models


class OrdersModel(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid4, editable=False)
    name = models.CharField(max_length=50, default='')
    item = models.CharField(max_length=50, default='')
    count = models.IntegerField(default=0)