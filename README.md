# Banking Transaction Fraud Detection & Insights

A data-driven solution for real-time banking fraud detection and risk monitoring using SQL, Python, Machine Learning, and interactive dashboards.

## Problem Statement
Rising financial fraud leads to billions in losses. Manual fraud detection is slow and inefficient, and banks require automated fraud detection systems to minimize risk and financial loss. The project aims to analyze transaction patterns, identify high-risk segments, and build predictive models to detect fraudulent activities in real-time.

## Solution Overview
This project combines end-to-end data engineering, advanced analytics, predictive modeling, and rich visual dashboards to detect and monitor banking frauds:

- **SQL** for robust data preparation and validation.  
- **Python & Machine Learning** for model development.  
- **Streamlit** for easy, interactive deployment.  
- **Power BI** dashboard for actionable insights.  
- **Real-time fraud prediction** with practical business impact.  

## Major Steps & Methodology

### 1. Data Collection & Overview
- Dataset sourced from real-world bank transactions.  
- **Key features:** Demographic (age, gender, location), transaction details, device type, merchant category, fraud labels.  
- **Size:** 200,000 customers and 10,090 suspected fraud transactions (5.04% fraud rate).  
- **High-value frauds:** Avg fraud transaction = 49,280 → ~497 million total.  

### 2. Data Validation & Cleaning (SQL)
- Missing value & duplicate checks.  
- Range checks on transaction amounts.  
- Validation of fraud transaction counts.  
- Device & geo-segmentation with SQL GROUP queries.  
- **MySQL** used for data management & cleaning.  

### 3. Exploratory Data Analysis (EDA)
- Visualizations by age, device type, geography, transaction type.  
- **Age groups:** 18–57 most impacted; highest = 48–57 (1,940 frauds).  
- **Device risk:** Mobile & Desktop highest (871 & 890 frauds in business accounts).  
- **Fraud types:**  
  - Transfers: 20.55%  
  - Debit: 20.15%  
  - Credit: 20.3%  
  - Bill Payment: 19.56%  
  - Withdrawal: 19.44%  
- **Top fraud cities:** Lakshadweep, Tamil Nadu, Uttarakhand, Madhya Pradesh, Telangana.  

### 4. Machine Learning Model Building
- **Models:** Random Forest & XGBClassifier.  
- **Preprocessing:** Label encoding, scaling, SMOTE.  
- **Evaluation:**  
  - Accuracy: **80%**  
  - Precision (fraud): **0.05**  
  - Recall (fraud): **0.18**  
  - F1-score (fraud): **0.08** → Imbalance challenge remains.  
- **Libraries:** Pandas, Numpy, Sklearn, XGBoost, Matplotlib, Seaborn.  

### 5. Deployment & Visualization
- **Streamlit App:** Upload CSVs → real-time predictions + fraud probability.  
- Display **Top 100 potential frauds** with scores.  
- Fraud vs non-fraud distribution visualization.  
- **Power BI Dashboard:** KPIs, risk breakdowns by age/device/city, fraud trends.  

## Tools & Technology Stack

| Technology | Purpose/Usage |
|------------|---------------|
| SQL (MySQL) | Data storage, cleansing, feature queries |
| Python (Pandas, Sklearn, XGBoost) | Data analysis, model building, EDA |
| Jupyter Notebook | Experimentation, model evaluation |
| Streamlit | Interactive web app deployment (fraud prediction) |
| Power BI | Live dashboard and business KPI visualizations |
| GitHub | Version control and code sharing |

## How the Problem Was Solved
- Automated fraud detection pipeline with SQL + ML.  
- Combined statistical insights & predictive algorithms.  
- Built dashboards for monitoring fraud risks.  
- Deployed predictions with Streamlit for workflow integration.  
- Business metrics achieved: reduced manual review, faster fraud alerts, better compliance.  

## Business Impact
- Reduced financial losses via automation & early detection.  
- Real-time monitoring & proactive outreach.  
- Deep customer & fraud risk analytics.  
- Better decision-making & compliance.  

## Future Scope
- Integration with **banking APIs** for live transaction scoring.  
- Improve recall/precision with **ensemble & cost-sensitive learning**.  
- Deploy **real-time fraud alerts** for staff/customers.  
- REST API integration with business systems.  

## Getting Started
1. Clone the repository & install requirements (`requirements.txt`).  
2. Prepare MySQL DB & import dataset.  
3. Run Jupyter Notebook for model exploration & training.  
4. Launch Streamlit app → fraud scoring on new CSVs.  
5. View risks & trends in Power BI dashboard.  

## Contact & Resources
- **GitHub:** Project codebase & issues.  
- **Contact:** info.abhisheksingh004@gmail.com  
- **LinkedIn:** [Abhishek Singh](https://www.linkedin.com/in/abhishek-singh-50506329a/)  
- **Reference Dashboard & Code:**  

