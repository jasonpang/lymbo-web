import smtplib
from lymbo.secure import settings


# Source: http://stackoverflow.com/a/12424439/555547
def send_email(to, subject, body):
    gmail_user = settings.smtp_user
    gmail_pwd = settings.smtp_password
    FROM = settings.smtp_user
    TO = [to]  # Must be a list
    SUBJECT =subject
    TEXT = body

    # Prepare actual message
    message = """\From: %s\nTo: %s\nSubject: %s\n\n%s
    """ % (FROM, ", ".join(TO), SUBJECT, TEXT)
    try:
        #server = smtplib.SMTP(SERVER) 
        server = smtplib.SMTP("smtp.gmail.com", 587)  # Or port 465 doesn't seem to work!
        server.ehlo()
        server.starttls()
        server.login(gmail_user, gmail_pwd)
        server.sendmail(FROM, TO, message)
        #server.quit()
        server.close()
        return True
    except:
        return False