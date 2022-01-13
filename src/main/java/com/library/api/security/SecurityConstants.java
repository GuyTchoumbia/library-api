package com.library.api.security;

public final class SecurityConstants {
	
	private SecurityConstants() {
		throw new AssertionError();
	}
	
    public static final String SECRET = "SomeRandomExpression";
    public static final long EXPIRATION_TIME = 864_000_000; // 10 days
    public static final String TOKEN_PREFIX = "Bearer ";
    public static final String HEADER_STRING = "Authorization";
    public static final String SIGN_UP_URL = "/users/sign-up";
}
