#!/bin/bash

# Doctor Appointment Booking App - Deployment Script
echo "🚀 Starting deployment preparation..."

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📝 Initializing Git repository..."
    git init
    git add .
    git commit -m "Initial commit - Doctor appointment booking app"
else
    echo "📝 Adding changes to Git..."
    git add .
    git commit -m "Prepare for Render deployment - $(date)"
fi

echo "✅ Deployment files created successfully!"
echo ""
echo "📋 Next Steps:"
echo "1. Push this repository to GitHub"
echo "2. Connect your GitHub repo to Render"
echo "3. Deploy using the render.yaml configuration"
echo ""
echo "🔗 Your services will be available at:"
echo "   Backend:  https://doctor-booking-backend.onrender.com"
echo "   Frontend: https://doctor-booking-frontend.onrender.com" 
echo "   Admin:    https://doctor-booking-admin.onrender.com"
echo ""
echo "🎉 Ready for deployment!"
