# CryptoProject

A comprehensive cryptocurrency tracking and analysis platform with Flutter-based mobile and web applications.

## Project Structure

```
├── backend/           # FastAPI backend
│   ├── app/          # Application code
│   └── requirements.txt
└── flutter_app/       # Flutter Application
    ├── lib/          # Main application code
    ├── test/        # Tests
    ├── android/     # Android-specific code
    ├── ios/         # iOS-specific code
    └── web/         # Web-specific code
```

## Setup Instructions

### Backend
1. Create a virtual environment:
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: .\venv\Scripts\activate
   ```
2. Install dependencies:
   ```bash
   cd backend
   pip install -r requirements.txt
   ```

### Frontend
1. Install dependencies:
   ```bash
   cd frontend
   npm install
   ```

## Features
- Real-time cryptocurrency price tracking
- Historical price analysis
- User authentication
- Portfolio management
- Market trends and analytics

## Tech Stack
- Backend: FastAPI, SQLAlchemy, PostgreSQL
- Frontend: React, TypeScript, TailwindCSS
- Authentication: JWT
- Data Sources: Various crypto APIs