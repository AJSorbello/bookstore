# Bookstore Management System

A full-featured Django web application for managing a bookstore's inventory, sales, customers, and salespersons.

**Live Site:** [https://ajbooks-5dee885a9073.herokuapp.com/](https://ajbooks-5dee885a9073.herokuapp.com/)

## Features

- **Book Management**: Add, edit, and remove books with details like name, author, price, genre, and type
- **Sales Tracking**: Record and analyze book sales with quantity and price tracking
- **Customer Management**: Manage customer information and purchase history
- **Admin Dashboard**: Django admin interface for easy data management
- **Authentication**: Secure login and logout functionality
- **Data Visualization**: Generate reports and visualizations using matplotlib and pandas
- **Responsive Design**: Mobile-friendly web interface

## Tech Stack

- Django 4.2.16
- PostgreSQL (with psycopg2)
- pandas & matplotlib for data analysis
- Pillow for image handling
- Gunicorn for production server
- WhiteNoise for static file serving

## Installation

1. Clone the repository
2. Create and activate a virtual environment:
   ```
   python -m venv myenv
   source myenv/bin/activate  # On Windows: myenv\Scripts\activate
   ```
3. Install dependencies:
   ```
   pip install -r requirements.txt
   ```
4. Set up environment variables in `.env` file
5. Run migrations:
   ```
   python manage.py migrate
   ```
6. Create a superuser:
   ```
   python manage.py createsuperuser
   ```
7. Start the development server:
   ```
   python manage.py runserver
   ```

## Project Structure

- **books/**: Book model and related views
- **sales/**: Sales recording and reporting
- **customers/**: Customer management
- **salespersons/**: Salesperson profiles and performance
- **templates/**: HTML templates
- **static/**: CSS, JavaScript, and images
- **media/**: User-uploaded files

## Deployment

The project is configured for deployment with:
- Gunicorn as the WSGI server
- WhiteNoise for static files
- PostgreSQL database support with dj-database-url

## License

This project is open source and available for educational purposes.