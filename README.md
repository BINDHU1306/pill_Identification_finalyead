# IMPRINTQ: A Hybrid Deep Learning Framework for Intelligent Pill Identification Using Visual Features and Character Recognition

**Malla Reddy University**  
*Department of Computer Science & Engineering*  
*R23 B.Tech CSE IV Year I Sem :: Academic Year 2026-2027*  
*Major Project Phase-1*

---

## 📌 Project Overview & Abstract

Medication errors caused by incorrect pill identification pose serious risks to patient safety. **IMPRINTQ** is a hybrid deep learning framework that identifies pills using visual features and character recognition. It utilizes **CNN, YOLO, and ResNet** to analyze pill shape, colour, and imprinted characters. **Python, Scikit-learn, and Random Forest** support machine learning, while **Pandas and NumPy** handle data processing. The application uses **React.js** for the frontend, **Node.js and Express.js** for backend services, and **Axios** for REST API communication. Key features include image-based identification, imprint recognition, candidate ranking, and database-based pill retrieval, helping improve identification efficiency and medication safety.

---

## 👥 Student & Guide Details

| S.No | Roll Number | Student Name | Role & Contribution |
| :---: | :---: | :---: | :--- |
| **1** | **2311CS010333** | **L.SRIVANI** | Project Coordination, Dataset Preparation & Preprocessing |
| **2** | **2311CS010272** | **K.HEMANTH RAM KUMAR** | Custom CNN Model Architecture & Deep Learning Training |
| **3** | **2311CS010308** | **K.CHARANJITH** | YOLO Pill & Imprint Detection, ResNet Visual Feature Extraction |
| **4** | **2311CS010303** | **I.NITISH KUMAR** | Full Stack Application Development (React.js, Node.js, Express, Axios) |

---

## ⚙️ System Architecture & Hybrid Pipeline

```
 [ Input Image / Webcam Capture ]
                │
                ▼
  [ Stage 1: YOLO Object Detection ]
     ├── Localize Pill Bounding Box [x1, y1, x2, y2]
     └── Detect Debossed Imprint Region
                │
        ┌───────┴───────────────────────────────┐
        ▼                                       ▼
 [ Visual & Morphological Analysis ]    [ Imprint Character Recognition ]
  ├── Geometric Shape (Round, Oval,      ├── CLAHE & Laplacian Filter
  │   Capsule, Oblong)                   ├── EasyOCR Alphanumeric Reader
  └── Dominant Color Profile (HSV/RGB)   └── Score Mark / Line Detection
        │                                       │
        ▼                                       ▼
 [ Stage 2: Deep Feature Extraction ]   [ Imprint Similarity Match ]
  ├── ResNet-18 Visual Embeddings        └── Levenshtein String Comparison
  │   (512-Dimensional Vector)
  └── Custom CNN Classifier
      (10 Medicine Classes Softmax)
        │
        └───────────────────────┬───────────────────────┘
                                ▼
         [ Stage 3: Random Forest Candidate Ranking ]
          ├── Multi-Modal Feature Fusion
          ├── Calibrated Ensemble Confidence Scoring
          └── Ranked Top-5 Medicine Matches
                                │
                                ▼
         [ Stage 4: Verified Drug Database & Retrieval ]
          ├── Comprehensive Clinical Monograph
          ├── Indications, Dosage, Warnings & Adverse Effects
          └── Manufacturer & FDA Registry Verification
```

---

## 🛠️ Technology Stack

| Layer | Technology | Purpose |
| :--- | :--- | :--- |
| **Frontend UI** | **React.js (Vite)** + Lucide Icons | Responsive single-page application with webcam capture, interactive YOLO bounding boxes, candidate tables, and monograph modal |
| **API Gateway** | **Node.js & Express.js** | Microservice gateway, file streaming, database caching, search & filter endpoints |
| **HTTP Client** | **Axios** | REST API communication between React and Express, and between Express and Python AI service |
| **AI Microservice** | **Python 3.11 + FastAPI** | High-performance inference server hosting the hybrid deep learning pipeline |
| **Custom CNN** | **TensorFlow 2.21 / Keras** | Custom deep convolutional neural network for 10-class pharmaceutical recognition (`DrugsAndVitaminsCustomCNNModel.h5`) |
| **Visual Embeddings** | **PyTorch + Torchvision (ResNet-18)** | 512-dimensional deep visual feature representations |
| **Object Detection** | **YOLO + OpenCV** | Pill localization, contour segmentation, and imprint zone bounding boxes |
| **Character Recognition** | **EasyOCR** | Contrast-enhanced character extraction from debossed / embossed pill surfaces |
| **Candidate Ranking** | **Scikit-learn (Random Forest)** | Ensemble classifier fusing CNN probability, ResNet similarity, shape, color, and OCR scores |
| **Data Processing** | **Pandas & NumPy** | Matrix operations, feature normalization, and dataset manipulation |

---

## 🚀 How to Run the Project

### ⚡ Option 1: One-Click Launch (Recommended)

Double-click or run:
```cmd
run_project.bat
```
This automatically starts:
1. Python AI Microservice on `http://localhost:8000`
2. Node.js Express Gateway & React Web Application on `http://localhost:5000`

Then open your browser to **`http://localhost:5000`**.

---

### 💻 Option 2: Step-by-Step Manual Launch

#### Step 1: Start the Python AI Microservice
```cmd
cd IMPRINTQ\ai_service
C:\Users\teja\AppData\Local\Programs\Python\Python311\python.exe main.py
```
*Health Check: `http://localhost:8000/api/health`*

#### Step 2: Start the Node.js Express Gateway
```cmd
cd IMPRINTQ\backend
node server.js
```
*Web Application & API: `http://localhost:5000`*

#### Step 3 (Optional): Start React Vite Dev Server (for UI editing)
```cmd
cd IMPRINTQ\frontend
npm.cmd run dev
```
*React Live Dev Server: `http://localhost:3000`*

---

## 🧪 Testing with Sample Pills

The application includes an **Instant Test Gallery** right on the interface:
- **Biogesic 500**: Round white tablet with single score line and "BIOGESIC" imprint.
- **Omega-3 Fish Oil**: Golden amber oblong softgel capsule.
- **Alaxan FR**: Orange capsule-shaped tablet (caplet) with "ALAXAN" imprint.
- **Neozep Forte**: Round green decongestant tablet.

Simply click any pill in the gallery or upload your own image/webcam photo to view instant YOLO detection, visual breakdown, candidate ranking, and FDA monograph.
