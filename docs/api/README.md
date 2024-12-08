# FishPro API Documentation

## Authentication

### Multi-Factor Authentication (MFA)
- Endpoint: `/auth/mfa`
- Methods: `POST`, `PUT`, `DELETE`
- Description: Manage MFA settings and verification

### User Authentication
- Endpoint: `/auth`
- Methods: `POST`, `GET`
- Description: User login, registration, and session management

## Fishing Spots

### Spot Management
- Endpoint: `/spots`
- Methods: `GET`, `POST`, `PUT`, `DELETE`
- Description: CRUD operations for fishing spots

### Spot Reviews
- Endpoint: `/spots/{spotId}/reviews`
- Methods: `GET`, `POST`, `PUT`, `DELETE`
- Description: Manage spot reviews and ratings

### Spot Search
- Endpoint: `/spots/search`
- Method: `GET`
- Description: Search spots by location, features, or fish types

## Social Features

### Groups
- Endpoint: `/groups`
- Methods: `GET`, `POST`, `PUT`, `DELETE`
- Description: Manage fishing groups and memberships

### Recommendations
- Endpoint: `/recommendations`
- Method: `GET`
- Description: Get personalized spot and group recommendations

## Location Services

### Map Data
- Endpoint: `/maps/tiles`
- Method: `GET`
- Description: Retrieve map tiles and styling

### Offline Maps
- Endpoint: `/maps/offline`
- Methods: `GET`, `POST`
- Description: Manage offline map data

## Data Models

### Spot Model
```dart
{
  "id": "string",
  "name": "string",
  "location": {
    "latitude": "number",
    "longitude": "number"
  },
  "description": "string",
  "features": ["string"],
  "fishTypes": ["string"],
  "rating": "number",
  "reviewCount": "number"
}
```

### Review Model
```dart
{
  "id": "string",
  "spotId": "string",
  "userId": "string",
  "rating": "number",
  "comment": "string",
  "images": ["string"],
  "createdAt": "datetime"
}
```

### Group Model
```dart
{
  "id": "string",
  "name": "string",
  "description": "string",
  "members": ["string"],
  "admins": ["string"],
  "createdAt": "datetime"
}
```

## Error Handling

### Error Codes
- 400: Bad Request
- 401: Unauthorized
- 403: Forbidden
- 404: Not Found
- 429: Too Many Requests
- 500: Internal Server Error

### Error Response Format
```json
{
  "error": {
    "code": "string",
    "message": "string",
    "details": {}
  }
}
```
