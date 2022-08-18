package util;

import java.io.*;

public class FileUtil {
	public static void saveImage(String root, String iname, byte[] ifile) throws IOException {
		
		root += "/images";
		File f = new File(root);
		if(!f.exists()) f.mkdir();
		f = new File(root + "/" + iname);
		FileOutputStream out = new FileOutputStream(f);
		out.write(ifile);
		out.close();
	}
}
