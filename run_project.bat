@echo off
title IMPRINTQ - Intelligent Pill Identification System
color 0B
echo ===============================================================================
echo     IMPRINTQ: Hybrid Deep Learning Framework for Intelligent Pill Identification
echo     Malla Reddy University - Computer Science & Engineering (2026-2027)
echo ===============================================================================
echo.
echo Starting Python AI Microservice (FastAPI + CNN + YOLO + ResNet + EasyOCR)...
start "IMPRINTQ AI Microservice [Port 8000]" cmd /k "cd /d %~dp0ai_service && C:\Users\teja\AppData\Local\Programs\Python\Python311\python.exe main.py"

echo Waiting 5 seconds for AI Microservice to initialize...
timeout /t 5 /nobreak >nul

echo Starting Node.js Express API Gateway and Web Application [Port 5000]...
start "IMPRINTQ Node.js Gateway [Port 5000]" cmd /k "cd /d %~dp0backend && node server.js"

echo.
echo ===============================================================================
echo   IMPRINTQ Services Launched Successfully!
echo   Web Application URL : http://localhost:5000
echo   React Dev Server    : http://localhost:3000 (run start_frontend_dev.bat if editing)
echo   Node API Gateway    : http://localhost:5000/api/health
echo   AI Microservice     : http://localhost:8000
echo ===============================================================================
echo.
pause
