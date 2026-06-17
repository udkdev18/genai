#p6 resume evaluator

import google.generativeai as genai
from PyPDF2 import PdfReader

genai.configure(api_key="YOUR-API-KEY")

reader = PdfReader("/usr/colab/Vishnu_Kashyap_D_1BY23AI187_BMSITM.pdf")
resume = ""
for page in reader.pages:
    resume += page.extract_text()

model = genai.GenerativeModel('gemini-2.5-flash')

prompt = f"""
Evaluate this resume.
Provide:
1. Score out of 10
2. Strengths
3. Weaknesses
4. Missing Skills
5. Suggestions for Improvement

Resume:
{resume}
"""

response = model.generate_content(prompt)
print(response.text)
