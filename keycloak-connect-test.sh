curl -X POST http://localhost:8585/auth/realms/qeng/protocol/openid-connect/token\
  -H "content-type: application/x-www-form-urlencoded"\
  -d "grant_type=password&client_id=document-archive&username=kc_admin&password=1234"


 curl -X GET http://localhost:3000/ping -H "authorization: bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJ1TzZOTWd1QkdMeWFuTllWdDcwZ01OMmJIU3ZQejhyMkRoSzRqYm1iU3BFIn0.eyJleHAiOjE2NDEzMTAyNzYsImlhdCI6MTY0MTMwOTk3NiwianRpIjoiY2I3NmE3ZjctYzk1ZC00ODVhLWFkODctYTNlMDhjZjk3MjExIiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4NTg1L2F1dGgvcmVhbG1zL3FlbmciLCJhdWQiOlsicmVhbG0tbWFuYWdlbWVudCIsImFjY291bnQiXSwic3ViIjoiZGM0MmRhYjMtZmRlNi00OGQzLWE4YTYtMDgxMTQ0YjU4NjM1IiwidHlwIjoiQmVhcmVyIiwiYXpwIjoiZG9jdW1lbnQtYXJjaGl2ZSIsInNlc3Npb25fc3RhdGUiOiI2Y2YxZWZlNC00ZDcwLTRjMTItOWQ1ZC02MTAzZjZiMjRiOGYiLCJhY3IiOiIxIiwicmVhbG1fYWNjZXNzIjp7InJvbGVzIjpbImRlZmF1bHQtcm9sZXMtcWVuZyIsIm9mZmxpbmVfYWNjZXNzIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJyZWFsbS1tYW5hZ2VtZW50Ijp7InJvbGVzIjpbInZpZXctaWRlbnRpdHktcHJvdmlkZXJzIiwidmlldy1yZWFsbSIsIm1hbmFnZS1pZGVudGl0eS1wcm92aWRlcnMiLCJpbXBlcnNvbmF0aW9uIiwicmVhbG0tYWRtaW4iLCJjcmVhdGUtY2xpZW50IiwibWFuYWdlLXVzZXJzIiwicXVlcnktcmVhbG1zIiwidmlldy1hdXRob3JpemF0aW9uIiwicXVlcnktY2xpZW50cyIsInF1ZXJ5LXVzZXJzIiwibWFuYWdlLWV2ZW50cyIsIm1hbmFnZS1yZWFsbSIsInZpZXctZXZlbnRzIiwidmlldy11c2VycyIsInZpZXctY2xpZW50cyIsIm1hbmFnZS1hdXRob3JpemF0aW9uIiwibWFuYWdlLWNsaWVudHMiLCJxdWVyeS1ncm91cHMiXX0sImFjY291bnQiOnsicm9sZXMiOlsibWFuYWdlLWFjY291bnQiLCJ2aWV3LWFwcGxpY2F0aW9ucyIsInZpZXctY29uc2VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwiZGVsZXRlLWFjY291bnQiLCJtYW5hZ2UtY29uc2VudCIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoiZW1haWwgcHJvZmlsZSIsInNpZCI6IjZjZjFlZmU0LTRkNzAtNGMxMi05ZDVkLTYxMDNmNmIyNGI4ZiIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJuYW1lIjoiS0MgQWRtaW4iLCJwcmVmZXJyZWRfdXNlcm5hbWUiOiJrY19hZG1pbiIsImdpdmVuX25hbWUiOiJLQyIsImZhbWlseV9uYW1lIjoiQWRtaW4iLCJlbWFpbCI6ImtjX2FkbWluQHFlbmcuaXIifQ.R9i-LgV4IbpeM1c7F3Tj09Jk9FmkXnTImSoed9mE26MmCufBr37JtJ37sJer3ClJT8ivC3kZgHVUsT4EohlhvYEIwH0VoCcJVznp71cCvEjqcT61vDSDlXWibhBlXIX4dcPG9RTCctWNeRguuLdgzn00M7_WjeUKQYn-_yPIAvUgKl2XgNGN4qEfIedxdmSPYBjdepSMQNRqSrAMF_DkgJh5jb4LYRLeDDP5xRFS2ryTmgZYjj_kCGg7azW8rxhZwN0LTLlq9XKEXyY-ga_FkJFkEfuaqA2PxVta5pXmZnncRRzAK5vFdt6sO0h4vFQK7q3OYdViqqEU5vFMcFHjjw"
