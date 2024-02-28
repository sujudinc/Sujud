const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "analytics": {
        "plugins": {
            "awsPinpointAnalyticsPlugin": {
                "pinpointAnalytics": {
                    "appId": "4bd0429e032e45169fb33d5cb823de3f",
                    "region": "ca-central-1"
                },
                "pinpointTargeting": {
                    "region": "ca-central-1"
                }
            }
        }
    },
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "AdminQueries": {
                    "endpointType": "REST",
                    "endpoint": "https://7ucdu7jn8f.execute-api.ca-central-1.amazonaws.com/dev",
                    "region": "ca-central-1",
                    "authorizationType": "AMAZON_COGNITO_USER_POOLS"
                },
                "RukuAPI": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://y3im7wmqhjapvjnzq4pvpulaxm.appsync-api.ca-central-1.amazonaws.com/graphql",
                    "region": "ca-central-1",
                    "authorizationType": "AMAZON_COGNITO_USER_POOLS",
                    "apiKey": "da2-vosgbelsfretxni3kvrw5seucq"
                }
            }
        }
    },
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "ca-central-1:2b4df9c6-7561-46a7-8acc-159513a81b96",
                            "Region": "ca-central-1"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "ca-central-1_K06FxyLjZ",
                        "AppClientId": "54kj448h21s1qurl4tr1sd361c",
                        "Region": "ca-central-1"
                    }
                },
                "GoogleSignIn": {
                    "Permissions": "email,profile,openid",
                    "ClientId-WebApp": "368964634228-71a2307vgvgs867ue3rt54pppa8c0f70.apps.googleusercontent.com"
                },
                "Auth": {
                    "Default": {
                        "OAuth": {
                            "WebDomain": "sujud-dev-dev.auth.ca-central-1.amazoncognito.com",
                            "AppClientId": "54kj448h21s1qurl4tr1sd361c",
                            "SignInRedirectURI": "http://localhost:3000/,myapp://,https://sujud.app/",
                            "SignOutRedirectURI": "http://localhost:3000/,myapp://,https://sujud.app/",
                            "Scopes": [
                                "phone",
                                "email",
                                "openid",
                                "profile",
                                "aws.cognito.signin.user.admin"
                            ]
                        },
                        "authenticationFlowType": "USER_SRP_AUTH",
                        "socialProviders": [
                            "GOOGLE"
                        ],
                        "usernameAttributes": [
                            "EMAIL",
                            "PHONE_NUMBER"
                        ],
                        "signupAttributes": [
                            "EMAIL",
                            "FAMILY_NAME",
                            "GIVEN_NAME"
                        ],
                        "passwordProtectionSettings": {
                            "passwordPolicyMinLength": 8,
                            "passwordPolicyCharacters": []
                        },
                        "mfaConfiguration": "OPTIONAL",
                        "mfaTypes": [
                            "SMS",
                            "TOTP"
                        ],
                        "verificationMechanisms": [
                            "EMAIL"
                        ]
                    }
                },
                "AppSync": {
                    "Default": {
                        "ApiUrl": "https://y3im7wmqhjapvjnzq4pvpulaxm.appsync-api.ca-central-1.amazonaws.com/graphql",
                        "Region": "ca-central-1",
                        "AuthMode": "AMAZON_COGNITO_USER_POOLS",
                        "ClientDatabasePrefix": "RukuAPI_AMAZON_COGNITO_USER_POOLS"
                    },
                    "RukuAPI_API_KEY": {
                        "ApiUrl": "https://y3im7wmqhjapvjnzq4pvpulaxm.appsync-api.ca-central-1.amazonaws.com/graphql",
                        "Region": "ca-central-1",
                        "AuthMode": "API_KEY",
                        "ApiKey": "da2-o5xallhtlfc2flkg5i3yzxb4hy",
                        "ClientDatabasePrefix": "RukuAPI_API_KEY"
                    },
                    "RukuAPI_AWS_IAM": {
                        "ApiUrl": "https://y3im7wmqhjapvjnzq4pvpulaxm.appsync-api.ca-central-1.amazonaws.com/graphql",
                        "Region": "ca-central-1",
                        "AuthMode": "AWS_IAM",
                        "ClientDatabasePrefix": "RukuAPI_AWS_IAM"
                    }
                },
                "S3TransferUtility": {
                    "Default": {
                        "Bucket": "ruku-file-storage153647-dev",
                        "Region": "ca-central-1"
                    }
                },
                "PinpointAnalytics": {
                    "Default": {
                        "AppId": "4bd0429e032e45169fb33d5cb823de3f",
                        "Region": "ca-central-1"
                    }
                },
                "PinpointTargeting": {
                    "Default": {
                        "Region": "ca-central-1"
                    }
                }
            }
        }
    },
    "storage": {
        "plugins": {
            "awsS3StoragePlugin": {
                "bucket": "ruku-file-storage153647-dev",
                "region": "ca-central-1",
                "defaultAccessLevel": "guest"
            }
        }
    }
}''';
