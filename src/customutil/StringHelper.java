package customutil;

import java.util.List;

import dataform.FormCreateJob;

public class StringHelper {
	public static boolean isListStringNull(List<String> toCheck) {
		for (String field : toCheck) {
			if (isStringNull(field))
				return true;
		}
		return false;
	}

	public static boolean isStringNull(String toCheck) {
		return toCheck == null || toCheck.isEmpty() || toCheck.equals("") || toCheck.trim().equals("")
				|| toCheck.trim().isEmpty();
	}

	public static String getAlphaNumericString(int n) {
		String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "0123456789" + "abcdefghijklmnopqrstuvxyz";
		StringBuilder sb = new StringBuilder(n);

		for (int i = 0; i < n; i++) {
			int index = (int) (AlphaNumericString.length() * Math.random());
			sb.append(AlphaNumericString.charAt(index));
		}

		return sb.toString();
	}
	public static  String  htmlEmailWelJob (FormCreateJob form) {
		
		String rs="<div style=\"padding:1px 20px 20px 20px;margin-bottom:20px;background-color:#f5fafd;border:1px solid #d8e8f2;border-radius:4px\">\r\n"
				+ "                    <h2 style=\"margin-top:1.1em;margin-bottom:0\"><a href=\"https://www.vlance.vn/viec-freelance/chuyen-template-thanh-website-15?utm_source=viec-moi&amp;utm_medium=email&amp;utm_campaign=job-newsletter-exact-20210101-day\" style=\"color:#429fdd;text-transform:uppercase;font-weight:normal;text-decoration:none\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?q=https://www.vlance.vn/viec-freelance/chuyen-template-thanh-website-15?utm_source%3Dviec-moi%26utm_medium%3Demail%26utm_campaign%3Djob-newsletter-exact-20210101-day&amp;source=gmail&amp;ust=1609599050409000&amp;usg=AFQjCNGezaHL8kpevS3vGQvwKh61q511Ew\">Chuyển template thành website</a>\r\n"
				+ "                        <span style=\"font-size:11px;font-weight:bold;background:#4390d9;color:#fff;font-family:'Open Sans',sans-serif;padding:1px 4px 0 4px;border-radius:2px;text-transform:uppercase;display:inline-block;line-height:14px\">Việc dự án</span></h2>\r\n"
				+ "                    <p style=\"font-size:14px;font-style:italic;margin-top:0.5em\">Lập trình web | 500.000 VNĐ - 1.000.000 VNĐ | Toàn Quốc</p>\r\n"
				+ "                    <p>Chào các bạn, \r\n"
				+ "\r\n"
				+ "Mình có mua theme này về làm theme cho công ty mình. Mình cần một bạn giỏi Wordpress có thể chuyển template với các chức năng như template dưới đây thành website công ty. \r\n"
				+ "\r\n"
				+ "Các bạn... <a href=\"https://www.vlance.vn/viec-freelance/chuyen-template-thanh-website-15?utm_source=viec-moi&amp;utm_medium=email&amp;utm_campaign=job-newsletter-exact-20210101-day\" style=\"text-decoration:none;color:#429fdd\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?q=https://www.vlance.vn/viec-freelance/chuyen-template-thanh-website-15?utm_source%3Dviec-moi%26utm_medium%3Demail%26utm_campaign%3Djob-newsletter-exact-20210101-day&amp;source=gmail&amp;ust=1609599050409000&amp;usg=AFQjCNGezaHL8kpevS3vGQvwKh61q511Ew\">Xem thêm</a></p>\r\n"
				+ "                    <p style=\"text-align:center;margin-top:40px\"><a href=\"https://www.vlance.vn/viec-freelance/chuyen-template-thanh-website-15?utm_source=viec-moi&amp;utm_medium=email&amp;utm_campaign=job-newsletter-exact-20210101-day\" style=\"text-decoration:none;border-radius:5px;padding:10px 24px;background:#4390d9;font-size:16px;text-transform:uppercase;color:#ffffff\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?q=https://www.vlance.vn/viec-freelance/chuyen-template-thanh-website-15?utm_source%3Dviec-moi%26utm_medium%3Demail%26utm_campaign%3Djob-newsletter-exact-20210101-day&amp;source=gmail&amp;ust=1609599050409000&amp;usg=AFQjCNGezaHL8kpevS3vGQvwKh61q511Ew\">Gửi hồ sơ</a></p>\r\n"
				+ "                </div>";
		return null;
	}

}
