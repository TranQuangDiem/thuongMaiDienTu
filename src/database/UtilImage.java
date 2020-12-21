package database;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;

import javax.imageio.ImageIO;

public class UtilImage {
	public static String covertBase64(BufferedImage bf) throws IOException {
		ByteArrayOutputStream output = new ByteArrayOutputStream();
		ImageIO.write(bf, "png", output);
		String imageAsBase64 = Base64.getEncoder().encodeToString(output.toByteArray());
		return imageAsBase64;
	}
	public static ByteArrayInputStream  covertInputStream(BufferedImage bf) throws IOException {
		ByteArrayOutputStream output = new ByteArrayOutputStream();
		ImageIO.write(bf, "png", output);
		ByteArrayInputStream input = new ByteArrayInputStream(output.toByteArray());
		return input;
	}

}
