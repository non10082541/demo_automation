from datetime import date

# ===== date =====
# dd/mm/YY
def Gen_Current_Date():
    today = date.today()
    CURRENT_DATE = today.strftime("%m/%d/%Y")
    return  CURRENT_DATE
