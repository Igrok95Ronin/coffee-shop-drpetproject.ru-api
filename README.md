# Example cURL commands:

# Send SMS
curl -X POST http://localhost:8082/send-sms \
-H "Content-Type: application/json" \
-d '{"phoneNumber": "+79320581039"}'

# Register
curl -X POST http://localhost:8082/register \
-H "Content-Type: application/json" \
-d '{"phoneNumber": "+79320581039", "code": "8176", "password": "pass095"}'

# Login
curl -X POST http://localhost:8082/login \
-H "Content-Type: application/json" \
-d '{"phoneNumber": "+79320581039", "password": "pass095"}'

# Refresh
curl -X POST http://localhost:8082/refresh

# Protected
curl -X POST http://localhost:8082/protected

# Logout
curl -X POST http://localhost:8082/logout
