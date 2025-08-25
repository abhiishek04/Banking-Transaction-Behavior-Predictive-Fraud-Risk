# 🏦 Banking Transaction Fraud Detection & Insights

A data-driven solution for **real-time banking fraud detection** and risk monitoring using SQL, Python, Machine Learning, and interactive dashboards.

---

## 📸 Dashboard Preview

Here's a snapshot of the HR Analytics Dashboard built in Power BI:

![img alt](https://github.com/abhiishek04/Banking-Transaction-Behavior-Predictive-Fraud-Risk/blob/main/Dahboard_Preview.png)


## 📌 Problem Statement
Rising financial fraud leads to billions in losses. Manual fraud detection is slow and inefficient, and banks require automated systems to minimize risk and financial loss.  
This project analyzes transaction patterns, identifies high-risk segments, and builds predictive models to detect fraudulent activities in real time.

---

## 🚀 Solution Overview
This project combines **data engineering, predictive modeling, and dashboards** to detect and monitor banking frauds:

- **SQL** → Robust data preparation and validation  
- **Python & Machine Learning** → Model development  
- **Streamlit** → Interactive deployment  
- **Power BI** → Actionable insights  
- **Real-time fraud prediction** with practical business impact  

---

## 🛠️ Major Steps & Methodology

### 📂 1. Data Collection & Overview
- Real-world banking transactions dataset.  
- **Features:** demographics, transaction details, device type, merchant category, fraud labels.  
- **Size:** 200,000 customers, 10,090 suspected frauds (5.04% fraud rate).  
- **High-value frauds:** Avg = 49,280 → ~497M total.  

### 🧹 2. Data Validation & Cleaning (SQL)
- Missing values & duplicates check.  
- Range checks on transaction amounts.  
- Fraud count validation.  
- Device & geo-segmentation with SQL `GROUP BY`.  
- **MySQL** used for all steps.  

### 📊 3. Exploratory Data Analysis (EDA)
- Visuals by **age, device, geography, transaction type**.  
- **Age risk:** 48–57 highest (1,940 frauds).  
- **Device risk:** Mobile & Desktop highest (871 & 890 frauds).  
- **Fraud types:**  
  - Transfers → 20.55%  
  - Debit → 20.15%  
  - Credit → 20.3%  
  - Bill Payment → 19.56%  
  - Withdrawal → 19.44%  
- **Top cities:** Lakshadweep, Tamil Nadu, Uttarakhand, MP, Telangana.  

### 🤖 4. Machine Learning Model Building
- Models: **Random Forest, XGBoost**  
- Preprocessing: Label encoding, scaling, **SMOTE**  
- **Performance:**  
  - Accuracy: 80%  
  - Precision (fraud): 0.05  
  - Recall (fraud): 0.18  
  - F1 (fraud): 0.08 → Class imbalance challenge  
- Libraries: Pandas, Numpy, Sklearn, XGBoost, Matplotlib, Seaborn  

### 🌐 5. Deployment & Visualization
- **Streamlit App:** Upload CSV → real-time predictions with fraud probabilities.  
- Top 100 potential frauds shown with risk score.  
- Fraud vs Non-fraud visual distribution.  
- **Power BI Dashboard:** KPIs, fraud trends, risk breakdowns by **age, device, city**.  

---

## ⚙️ Tools & Technology Stack

| Logo | Technology | Purpose |
|------|------------|---------|
| ![MySQL](https://img.icons8.com/color/48/000000/mysql-logo.png) | SQL (MySQL) | Data storage, cleansing, queries |
| ![Python](https://img.icons8.com/color/48/000000/python.png) | Python (Pandas, Sklearn, XGBoost) | Data analysis & ML |
| ![Jupyter](https://img.icons8.com/fluency/48/000000/jupyter.png) | Jupyter Notebook | Model experimentation |
| ![Streamlit](https://img.icons8.com/color/48/000000/streamlit.png) | Streamlit | Web app deployment |
| ![Power BI](https://img.icons8.com/color/48/000000/power-bi.png) | Power BI | Dashboard & KPIs |
| ![GitHub](https://img.icons8.com/ios-glyphs/48/000000/github.png) | GitHub | Version control |

---

## ✅ How the Problem Was Solved
- Automated fraud detection pipeline with **SQL + ML**.  
- Combined **statistical insights & predictive models**.  
- Built dashboards for fraud monitoring.  
- Deployed **Streamlit app** for real-time workflow integration.  
- Reduced manual review → **faster fraud alerts & compliance improvements**.  

---

## 📈 Business Impact
- Reduced financial losses via automation.  
- Real-time fraud monitoring.  
- Customer & fraud risk insights.  
- Improved compliance & decision-making.  

---

## 🔮 Future Scope
- **Banking API** integration for live scoring.  
- Improve **precision/recall** with ensemble learning.  
- Real-time fraud alerts for staff/customers.  
- REST API for business system integration.  

---

## 🏁 Getting Started
1. Clone repo & install requirements (`requirements.txt`)  
2. Prepare MySQL DB & import dataset  
3. Run Jupyter Notebook → train model  
4. Launch Streamlit app → fraud scoring  
5. Explore Power BI dashboard for trends  

---

## 📬 Contact & Resources
- ![GitHub](https://img.icons8.com/ios-glyphs/24/000000/github.png) **GitHub:** Project repo & issues  
- 📧 **Email:** info.abhisheksingh004@gmail.com  
- 💼 **LinkedIn:** [Abhishek Singh](https://www.linkedin.com/in/abhishek-singh-50506329a/)  
- 📊 **Reference Dashboard & Code:** GitHub Repo Link  

---
