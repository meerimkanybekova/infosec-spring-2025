import smtplib
from email.mime.text import MIMEText

def send_email():
    sender_email = ""
    recipient_email = ""
    password = ""

    subject = "Server Status"
    body = "This is an automated email to notify that the server is running as expected."

    msg = MIMEText(body)
    msg["Subject"] = subject
    msg["From"] = sender_email
    msg["To"] = recipient_email

    try:
        with smtplib.SMTP("smtp.gmail.com", 587) as server:
            server.starttls()
            server.login(sender_email, password)
            server.sendmail(sender_email, recipient_email, msg.as_string())
        print("Email sent successfully.")
    except Exception as e:
        print(f"Failed to send email: {e}")

if __name__ == "__main__":
    send_email()
