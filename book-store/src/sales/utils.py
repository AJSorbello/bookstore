from books.models import Book
import matplotlib.pyplot as plt
import base64
from io import BytesIO

# Define a function that takes the ID
def get_bookname_from_id(val):
    bookname = Book.objects.get(id=val).name
    return bookname


def get_graph():
    buffer = BytesIO()
    plt.savefig(buffer, format='png')
    buffer.seek(0)
    image_png = buffer.getvalue()
    buffer.close()
    graph = base64.b64encode(image_png)
    graph = graph.decode('utf-8')
    return graph

# chart_type: user input of type of chart,

def get_chart(chart_type, data, labels):
    plt.switch_backend('AGG')
    fig = plt.figure(figsize=(10, 4))
    if chart_type == '#1':
        plt.bar(labels, data['quantity'])
        plt.xticks(rotation=45, ha='right')  # Rotate x-axis labels
    elif chart_type == '#2':
        plt.pie(data['price'], labels=labels)
    elif chart_type == '#3':
        plt.plot(labels, data['price'])
        plt.xticks(rotation=45, ha='right')  # Rotate x-axis labels
    else:
        print('unknown chart type')
    plt.tight_layout()
    chart = get_graph()
    return chart