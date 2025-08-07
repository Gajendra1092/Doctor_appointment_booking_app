# Doctor Appointment Booking App - Render Deployment Guide

## 🚀 Quick Deployment Steps

### Prerequisites
- GitHub account
- Render account (free tier available)
- This repository pushed to GitHub

### Option 1: Automatic Deployment (Recommended)

1. **Push to GitHub**
   ```bash
   git add .
   git commit -m "Deploy to Render"
   git push origin main
   ```

2. **Deploy on Render**
   - Go to [render.com](https://render.com)
   - Click "New +" → "Blueprint"
   - Connect your GitHub repository
   - Select this repository
   - Render will automatically detect the `render.yaml` file
   - Click "Apply" to deploy all services

### Option 2: Manual Deployment

#### Backend Deployment
1. Go to Render Dashboard → "New +" → "Web Service"
2. Connect GitHub repository
3. Configure:
   - **Name**: `doctor-booking-backend`
   - **Environment**: Node
   - **Root Directory**: `backend`
   - **Build Command**: `npm install`
   - **Start Command**: `npm start`
4. Add environment variables from `.env.production`

#### Frontend Deployment
1. Go to Render Dashboard → "New +" → "Static Site"
2. Connect GitHub repository
3. Configure:
   - **Name**: `doctor-booking-frontend`
   - **Root Directory**: `frontend`
   - **Build Command**: `npm install && npm run build`
   - **Publish Directory**: `dist`
4. Add environment variable:
   - `VITE_BACKEND_URL`: `https://your-backend-name.onrender.com`

#### Admin Panel Deployment
1. Go to Render Dashboard → "New +" → "Static Site"
2. Connect GitHub repository
3. Configure:
   - **Name**: `doctor-booking-admin`
   - **Root Directory**: `admin`
   - **Build Command**: `npm install && npm run build`
   - **Publish Directory**: `dist`
4. Add environment variable:
   - `VITE_BACKEND_URL`: `https://your-backend-name.onrender.com`

## 🔗 Expected URLs

After deployment, your services will be available at:
- **Backend API**: `https://doctor-booking-backend.onrender.com`
- **User Frontend**: `https://doctor-booking-frontend.onrender.com`
- **Admin Panel**: `https://doctor-booking-admin.onrender.com`

## ⚙️ Environment Variables

All necessary environment variables are configured in the `render.yaml` file.
For manual deployment, refer to `.env.production` for the complete list.

## 🔧 Post-Deployment

1. Test all three applications
2. Verify database connectivity
3. Test image uploads (Cloudinary)
4. Test admin login functionality
5. Test user registration and login

## 🆘 Troubleshooting

- **Build failures**: Check Node.js version compatibility
- **CORS errors**: Verify backend URL configuration
- **Database issues**: Confirm MongoDB connection string
- **Image upload issues**: Verify Cloudinary credentials

## 📞 Support

If you encounter issues, check:
1. Render service logs
2. Browser console for frontend errors
3. Network tab for API call failures
