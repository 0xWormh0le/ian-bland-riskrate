# Generated by Django 2.2.3 on 2019-07-20 16:44

from django.db import migrations, models
import django.db.models.deletion
import django_countries.fields


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Address',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('address', models.CharField(default='', max_length=128)),
                ('city', models.CharField(default='', max_length=128)),
                ('region', models.CharField(default='', max_length=128)),
                ('country', django_countries.fields.CountryField(max_length=2)),
                ('postal_code', models.CharField(default='', max_length=10)),
            ],
        ),
        migrations.CreateModel(
            name='Sector',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('code', models.CharField(default='NA', max_length=5, unique=True)),
                ('name', models.CharField(default='Not Available', max_length=96)),
            ],
        ),
        migrations.CreateModel(
            name='Company',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(default='', max_length=256)),
                ('other_names', models.TextField(blank=True, default='')),
                ('website', models.URLField(blank=True, default='')),
                ('address', models.ForeignKey(blank=True, default=None, on_delete=django.db.models.deletion.CASCADE, to='reports.Address')),
                ('sector', models.ForeignKey(default=None, on_delete=django.db.models.deletion.DO_NOTHING, to='reports.Sector')),
            ],
        ),
    ]
