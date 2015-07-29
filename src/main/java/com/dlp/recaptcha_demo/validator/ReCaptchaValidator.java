package com.dlp.recaptcha_demo.validator;

import java.io.IOException;

import org.apache.commons.io.IOUtils;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClientBuilder;
import org.json.JSONObject;

public class ReCaptchaValidator {
	private static String verificationUrl = "https://www.google.com/recaptcha/api/siteverify";
	private static String secret = "6LfqdwoTAAAAAD4XO6Kshwyg9Bm9ryz_QknY1jmk";

	public static boolean validatate(String reCaptchaResponse,
			String remoteAddress) throws ClientProtocolException, IOException {

		String url = verificationUrl + "?secret=" + secret + "&response="
				+ reCaptchaResponse + "&remoteip=" + remoteAddress;

		HttpClient client = HttpClientBuilder.create().build();
		HttpGet request = new HttpGet(url);
		HttpResponse response = client.execute(request);
		JSONObject obj = new JSONObject(IOUtils.toString(response.getEntity()
				.getContent()));
		return obj.getBoolean("success");
	}
}
