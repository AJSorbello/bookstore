from django import forms  # import django forms

# specify choices as a tuple
CHART_CHOICES = (  
    ('#1', 'Bar chart'),  # when user selects "Bar chart", it is stored as "#1"
    ('#2', 'Pie chart'),
    ('#3', 'Line chart')
)

# define class-based Form imported from Django forms
class SalesSearchForm(forms.Form): 
    book_title = forms.CharField(max_length=120)
    chart_type = forms.ChoiceField(choices=CHART_CHOICES)
    show_all = forms.BooleanField(required=False, label='Show All')