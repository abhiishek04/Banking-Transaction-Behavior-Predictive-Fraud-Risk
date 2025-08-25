import streamlit as st
import pandas as pd
import numpy as np
import joblib
import matplotlib.pyplot as plt
import seaborn as sns

st.title('Bank Transaction Fraud Detection Model')

# Upload CSV file
uploaded_file = st.file_uploader("Upload your bank transactions CSV file", type=["csv"])

if uploaded_file:
    # Read uploaded data
    df = pd.read_csv(uploaded_file)
    
    
    display_cols = ['Gender', 'Age', 'State', 'City', 'Bank_Branch', 'Account_Type', 
                    'Transaction_Amount', 'Merchant_ID', 'Transaction_Type', 'Merchant_Category',
                    'Transaction_Device', 'Transaction_Location', 'Device_Type', 'Transaction_Currency']
    display_cols = [col for col in display_cols if col in df.columns]
    display_df = df[display_cols].copy()
    
    # Drop columns that are not features.
    drop_cols = ['Customer_ID', 'Customer_Name', 'Customer_Contact', 'Customer_Email', 
                 'Transaction_Description', 'Transaction_ID', 'Transaction_Date', 'Transaction_Time']
    df = df.drop(columns=[col for col in drop_cols if col in df.columns], errors='ignore')

    # Categorical columns to encode (as per training)
    cat_cols = ['Gender', 'State', 'City', 'Bank_Branch', 'Account_Type', 'Merchant_ID', 
                'Transaction_Type', 'Merchant_Category', 'Transaction_Device', 
                'Transaction_Location', 'Device_Type', 'Transaction_Currency']
    
    # Encode categorical columns with consistent approach
    for col in cat_cols:
        if col in df.columns:
            df[col] = df[col].astype(str)
            df[col], _ = pd.factorize(df[col])

    # Load the trained model
    try:
        model = joblib.load('fraud_model.joblib')
    except Exception as e:
        st.error(f"Error loading model: {e}")
        st.stop()

    # Align features with model expectations, fill missing with 0
    if hasattr(model, "feature_names_in_"):
        model_features = model.feature_names_in_
    else:
        model_features = df.columns
        
    input_data = pd.DataFrame()
    for feat in model_features:
        if feat in df.columns:
            input_data[feat] = df[feat]
        else:
            input_data[feat] = 0

    y_probs = model.predict_proba(input_data)[:, 1]
    threshold = 0.20 
    
    df['Is_Fraud_Pred'] = (y_probs >= threshold).astype(int)
    df['Fraud_Prob'] = y_probs
    
    total_frauds = df['Is_Fraud_Pred'].sum()
    st.metric("Total Predicted Frauds", total_frauds)

    fraud_indices = df[df['Is_Fraud_Pred'] == 1].index
    top_100_indices = df.loc[fraud_indices].sort_values(by='Fraud_Prob', ascending=False).head(100).index
    top_100_display = display_df.loc[top_100_indices].copy()
    top_100_display['Fraud_Prob (%)'] = df.loc[top_100_indices, 'Fraud_Prob'].apply(lambda x: f"{x:.2%}").values
    st.subheader("Topmost Fraud Cases (by probability with actual details)")
    st.dataframe(top_100_display.reset_index(drop=True))
    
     
   
    # Plot countplot of fraud vs non-fraud
    fig, ax = plt.subplots()
    bx = sns.countplot(x='Is_Fraud_Pred', data=df, palette=["#4E89FF", "#FF4E4E"], ax=ax)
    for bars in bx.containers:
        bx.bar_label(bars)
    ax.set_xticklabels(['Non-Fraud', 'Fraud'])
    ax.set_xlabel("Transaction Type")
    ax.set_ylabel("Count")
    ax.set_title("Count of Fraud vs Non-Fraud Transactions")
    st.pyplot(fig)

else:
    st.info("Please upload the CSV file containing transactions for fraud detection.")
