#!/bin/bash

# Start the Gunicorn server in the background
gunicorn app:app &

# Run the setup for Streamlit
sh setup.sh

# Start the Streamlit server in the foreground
streamlit run --server.port $PORT templates/dashboard_form.py